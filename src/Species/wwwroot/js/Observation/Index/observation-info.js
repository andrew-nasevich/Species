observationMain.component('observationInfo', {
    bindings: {
        observation: '=',
        allSpeciesTypes: '=',
        allClasses: '=',
        allOrders: '=',
        allSpecies: '=',
        deleteObservation: '&',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/observation/observationInfo.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller(accountFactory, $rootScope, $dialog) {
        const vm = this;

        vm.$onInit = () => {
            vm.selectedSpecies = [vm.allSpecies.find(s => s.id == vm.observation.speciesId)];
            vm.selectedOrder = [vm.allOrders.find(o => o.id == vm.selectedSpecies[0].orderId)];
            vm.selectedClass = [vm.allClasses.find(c => c.id == vm.selectedOrder[0].classId)];
            vm.selectedSpeciesType = [vm.allSpeciesTypes.find(t => t.id == vm.selectedClass[0].speciesTypeId)];

            vm.species = [...vm.allSpecies.filter(s => s.orderId == vm.selectedOrder[0].id)];
            vm.orders = [...vm.allOrders.filter(o => o.classId == vm.selectedClass[0].id)];
            vm.classes = [...vm.allClasses.filter(c => c.speciesTypeId == vm.selectedSpeciesType[0].id)];
            vm.speciesTypes = vm.allSpeciesTypes;

            accountFactory.getById(vm.observation.accountId).then(account => {
                vm.account = account;

                vm.isEditable = $rootScope.isAuthenticated && ($rootScope.isAdmin || vm.account.id == $rootScope.account.id);
            });

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
            $dialog.confirm('Вы действительно хотите удалить данное наблюдение?').then(() => {
                vm.deleteObservation({ observation: vm.observation });
                vm.$dismiss({
                    reason: 'delete',
                });
            });
        };

        vm.onSelectedSpeciesTypeChange = () => {
            vm.classes = vm.allClasses.filter(c => vm.selectedSpeciesType.some(ss => ss.id == c.speciesTypeId));
            vm.selectedClass = [...vm.classes.filter(c => vm.selectedClass.some(sc => sc.id == c.id))];

            vm.onSelectedClassChange();
        };

        vm.onSelectedClassChange = () => {
            vm.orders = vm.allOrders.filter(o => vm.selectedClass.some(sc => sc.id == o.classId));
            vm.selectedOrder = vm.orders.length == 1 ? [...vm.orders] : [...vm.orders.filter(o => vm.selectedOrder.some(so => so.id == o.id))];

            vm.onSelectedOrderChange();
        };

        vm.onSelectedOrderChange = () => {
            vm.species = vm.allSpecies.filter(s => vm.selectedOrder.some(so => so.id == s.orderId));
            vm.selectedSpecies = vm.species.length == 1 ? [...vm.species] : [...vm.species.filter(s => vm.selectedSpecies.some(ss => ss.id == s.id))];
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
                smartButtonMaxItems: 1,
                selectionLimit: 1
            };
        };
    }
});