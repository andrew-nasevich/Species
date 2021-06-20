speciesHierarchy.component('speciesTypeInfo', {
    bindings: {
        speciesType: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/SpeciesHierarchy/SpeciesTypes/speciesTypeInfo.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($dialog) {
        const vm = this;

        vm.$onInit = () => {
            vm.isNew = vm.speciesType.id == 0;

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
            $dialog.confirm('Вы действительно хотите удалить данный тип видов?').then(() => {
                vm.$dismiss({
                    result: {
                        reason: 'delete',
                        entity: vm.speciesType
                    }
                });
            });
        };

        vm.save = () => {

            if (!vm.speciesType.name) {
                $dialog.alert('Пожалуйста, запоните поле названия.');
                return;
            }

            vm.$close({
                result: vm.speciesType,
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