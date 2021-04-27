speciesHierarchy.component('orderInfo', {
    bindings: {
        allSpeciesTypes: '=',
        allClasses: '=',
        allOrders: '=',
        order: '=',
        isEditable: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/SpeciesHierarchy/Orders/orderInfo.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.$onInit = () => {
            vm.isNew = vm.order.id == 0;

            vm.selectedClass = vm.isNew ? [] : [vm.allClasses.find(c => c.id == vm.order.classId)];
            vm.selectedSpeciesType = vm.isNew ? [] : [vm.allSpeciesTypes.find(t => t.id == vm.selectedClass[0].speciesTypeId)];

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
                    entity: vm.order
                }
            });
        };

        vm.save = () => {

            if (!vm.selectedClass[0]) {
                alert('Пожалуйста, выберите тип и класс для данного отряда.');
                return;
            }

            if (!vm.order.name) {
                alert('Пожалуйста, запоните поле названия.');
                return;
            }

            vm.order.classId = vm.selectedClass[0].id;
            vm.$close({
                order: vm.order,
            });
        };

        vm.onSelectedSpeciesTypeChange = () => {
            vm.classes = vm.allClasses.filter(c => vm.selectedSpeciesType.some(st => st.id == c.speciesTypeId));
            vm.selectedClass = [...vm.classes.filter(c => vm.selectedClass.some(sc => sc.id == c.id))];
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