observationIndex.component('observationInfo', {
    bindings: {
        observation: '=',
        account: '=',
        species: '=',
        speciesTypes: '=',
        onSpeciesTypesChage: '&',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/observation/observationInfo.html',
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.$onInit = () => {
            vm.selectedSpecies = [];//vm.species.find(s => s.id == vm.observation.speciesId);
            vm.selectedSpeciesTypes = [];//vm.speciesTypes.find(st => st.id == vm.selectedSpecies.speciesTypeId);
            

            //if (vm.account) {
            //    vm.account.isAdmin = vm.account.roles.find('administrator');
            //}
            //else {
            //    vm.account = {};
            //}

            vm.today = new Date();
            vm.maxDate = today.toISOString().substring(0, 10);

            vm.configMultiselect();
        };

        vm.close = () => {
            vm.$dismiss({
                reason: 'cancel',
            });
        };

        vm.save = () => {
            vm.$close({
                observation: vm.observation,
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
                scrollableHeight: '300px',
                scrollable: true,
                enableSearch: true,
                selectionLimit: 1
            };
        };
    }
});