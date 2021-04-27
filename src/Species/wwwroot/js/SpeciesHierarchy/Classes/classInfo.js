speciesHierarchy.component('classInfo', {
    bindings: {
        allSpeciesTypes: '=',
        allClasses: '=',
        class: '=',
        isEditable: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/SpeciesHierarchy/Classes/classInfo.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.$onInit = () => {
            vm.isNew = vm.class.id == 0;

            vm.selectedSpeciesType = vm.isNew ? [] : [vm.allSpeciesTypes.find(t => t.id == vm.class.speciesTypeId)];
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
                    entity: vm.class
                }
            });
        };

        vm.save = () => {

            if (!vm.selectedSpeciesType[0]) {
                alert('Пожалуйста, выберите тип для данного класса.');
                return;
            }

            if (!vm.class.name) {
                alert('Пожалуйста, запоните поле названия.');
                return;
            }

            vm.class.speciesTypeId = vm.selectedSpeciesType[0].id;
            vm.$close({
                result: vm.class,
            });
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