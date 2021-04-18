speciesIndex.component('speciesInfo', {
    bindings: {
        species: '=',
        allSpecies: '=',
        speciesTypes: '=',
        isAdmin: '=',
        isNew: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/Species/info.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.$onInit = () => {
            if (vm.species.speciesTypeId) {
                vm.selectedSpeciesType = [vm.speciesTypes.find(t => t.id == vm.species.speciesTypeId)];
            } else {
                vm.selectedSpeciesType = [];
            }
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
            if (!vm.selectedSpeciesType[0]) {
                alert('Выберите тип вида.')
                return;
            }

            vm.species.speciesTypeId = vm.selectedSpeciesType[0].id;
            vm.$close({
                species: vm.species,
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