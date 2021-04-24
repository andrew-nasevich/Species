speciesIndex.component('speciesInfo', {
    bindings: {
        allSpeciesTypes: '=',
        allClasses: '=',
        allOrders: '=',
        allSpecies: '=',
        species: '=',
        isEditable: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/SpeciesHierarchy/info.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.$onInit = () => {
            vm.isNew = vm.species.id == 0;

            vm.selectedOrder = vm.isNew ? [] : [vm.allOrders.find(o => o.id == vm.species.orderId)];
            vm.selectedClass = vm.isNew ? [] : [vm.allClasses.find(c => c.id == vm.selectedOrder[0].classId)];
            vm.selectedSpeciesType = vm.isNew ? [] : [vm.allSpeciesTypes.find(t => t.id == vm.selectedClass[0].speciesTypeId)];

            vm.orders = vm.isNew ? [] : [...vm.allOrders.filter(o => o.classId == vm.selectedClass[0].id)];
            vm.classes = vm.isNew ? [] : [...vm.allClasses.filter(c => c.speciesTypeId == vm.selectedSpeciesType[0].id)];
            vm.speciesTypes = vm.allSpeciesTypes;

            vm.configMultiselect();
        };

        vm.close = () => {
            vm.$dismiss({
                result: {
                    reason: 'cancel',
                }
            });
        };

        vm.delete = () => {
            vm.$dismiss({
                result: {
                    reason: 'delete',
                    entity: vm.species
                }
            });
        };

        vm.save = () => {

            if (!vm.selectedOrder[0]) {
                alert('Пожалуйста, выберите тип, класс и отряд для данного вида.');
                return;
            }

            if (!vm.species.russianName) {
                alert('Пожалуйста, заполните поле вида.');
                return;
            }

            if (!vm.species.category || vm.species.category > 4 || vm.species.category < 1) {
                alert('Пожалуйста, укажите категорию в диапазоне [1..4].');
                return;
            }

            vm.species.orderId = vm.selectedOrder[0].id;
            vm.$close({
                species: vm.species,
            });
        };

        vm.onSelectedSpeciesTypeChange = () => {
            vm.classes = vm.allClasses.filter(c => vm.selectedSpeciesType.some(st => st.id == c.speciesTypeId));
            vm.selectedClass = [...vm.classes.filter(c => vm.selectedClass.some(sc => sc.id == c.id))];
            
            vm.onSelectedClassChange();
        };

        vm.onSelectedClassChange = () => {
            vm.orders = vm.allOrders.filter(o => vm.selectedClass.some(c => c.id == o.classId));
            vm.selectedOrder = vm.orders.length == 1 ? [...vm.orders] : [...vm.orders.filter(o => vm.selectedOrder.some(so => so.id == o.id))];
        };


        vm.configMultiselect = () => {

            vm.config = {}
            vm.config.multiselectTranslation = {
                checkAll: 'Выбрать все',
                uncheckAll: 'Сбросить',
                buttonDefaultText: 'Выбрать',
                selectionCount: 'выбрано',
                searchPlaceholder: 'Искать...',
                dynamicButtonTextSuffix: 'выбрано',
            };

            vm.config.multiselectSettings = {
                scrollableHeight: '200px',
                selectionLimit: 1,
                smartButtonTextConverter: (itemText, originalItem) => itemText,
                smartButtonMaxItems: 1
            };
        };
    }
});