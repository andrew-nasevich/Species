observationIndex.component('observationInfo', {
    bindings: {
        observation: '=',
        currentAccount: '=',
        species: '=',
        speciesTypes: '=',
        deleteObservation: '&',
        onSpeciesTypesChage: '&',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/observation/observationInfo.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller(accountFactory) {
        const vm = this;

        vm.$onInit = () => {
            vm.selectedSpecies = [vm.species.find(s => s.id == vm.observation.speciesId)];
            vm.selectedSpeciesTypes = [vm.speciesTypes.find(st => st.id == vm.selectedSpecies[0].speciesTypeId)];

            accountFactory.getById(vm.observation.accountId).then(r => {
                vm.account = r;

                vm.editable = vm.account.id == vm.currentAccount.id || vm.currentAccount.roles.find(r => r == 'admin');
            });

            //if (vm.account) {
            //    vm.account.isAdmin = vm.account.roles.find('administrator');
            //}
            //else {
            //    vm.account = {};
            //}

            vm.today = new Date();
            vm.maxDate = vm.today.toISOString().substring(0, 10);
            vm.date = new Date(vm.observation.date);

            vm.configMultiselect();
        };

        vm.close = () => {
            vm.$dismiss({
                reason: 'cancel',
            });
        };

        vm.save = () => {
            var observation = angular.copy(vm.observation);
            observation.speciesId = vm.selectedSpecies[0].id;
            observation.date = vm.date;

            vm.$close({
                observation: observation,
            });
        };

        vm.delete = () => {
            vm.deleteObservation({ observation: vm.observation });
            vm.$dismiss({
                reason: 'delete',
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
                selectionLimit: 1,
                smartButtonTextConverter: (itemText, originalItem) => itemText,
                smartButtonMaxItems: 1
            };
        };
    }
});