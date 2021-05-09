'use strict'

var addObservationModule = angular.module('appBody', [
    'angularjs-dropdown-multiselect',
    'observationFactoryModule',
    'speciesTypeFactoryModule',
    'classFactoryModule',
    'orderFactoryModule',
    'speciesFactoryModule',
    'mapHelper',
    'pleasewait',
    'authorizationModule'
]);

addObservationModule.controller('addObservationController',
    function addObservationController($q, observationFactory, speciesTypeFactory, classFactory, orderFactory, speciesFactory, mapHelper, $pleasewait, $uibModal, $rootScope) {
        let vm = this;

        $pleasewait.show();

        vm.$onInit = () => {

            var today = new Date();
            vm.today = vm.getTodayDateString();
            vm.observation = {
                description: '',
                date: today,
            };

            var promises = {
                speciesTypes: speciesTypeFactory.get(),
                classes: classFactory.get(),
                orders: orderFactory.get(),
                species: speciesFactory.get(),
            };

            $q.all(promises).then(data => {
                vm.allSpeciesTypes = angular.copy(data.speciesTypes.map(o => { return { label: o.name, ...o } }));
                vm.observation.speciesTypes = angular.copy(vm.allSpeciesTypes);
                vm.observation.selectedSpeciesType = [];

                vm.allClasses = angular.copy(data.classes.map(c => { return { label: c.name, ...c } }));
                vm.observation.classes = [];
                vm.observation.selectedClass = [];

                vm.allOrders = angular.copy(data.orders.map(o => { return { label: o.name, ...o } }));
                vm.observation.orders = [];
                vm.observation.selectedOrder = [];

                vm.allSpecies = angular.copy(data.species.map(o => { return { label: `${o.russianName} - ${vm.convertCategory(o.category)}`, ...o } }));
                vm.observation.species = [];
                vm.observation.selectedSpecies = [];

                $pleasewait.hide();
            });

            mapHelper.init();
            mapHelper.registerOnClick(vm.onMapClick);

            vm.configMultiselect();
        };

        vm.onAuthorization = () => {
            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'bg',

                template: `<authorization
                            $close="$close(observation)"
                            $dismiss="$dismiss(reason)"/>`,
                controllerAs: '$ctrl'
            });
        };

        vm.onSelectedSpeciesTypeChange = () => {
            vm.observation.classes = vm.allClasses.filter(c => vm.observation.selectedSpeciesType.some(st => st.id == c.speciesTypeId));
            vm.observation.selectedClass = [...vm.observation.classes.filter(c => vm.observation.selectedClass.some(sc => sc.id == c.id))];

            vm.onSelectedClassChange();
        };

        vm.onSelectedClassChange = () => {
            vm.observation.orders = vm.allOrders.filter(o => vm.observation.selectedClass.some(c => c.id == o.classId));
            vm.observation.selectedOrder = vm.observation.orders.length == 1 ? [...vm.observation.orders] : [...vm.observation.orders.filter(o => vm.observation.selectedOrder.some(so => so.id == o.id))];

            vm.onSelectedOrderChange();
        };

        vm.onSelectedOrderChange = () => {
            vm.observation.species = vm.allSpecies.filter(s => vm.observation.selectedOrder.some(o => o.id == s.orderId));
            vm.observation.selectedSpecies = vm.observation.species.length == 1 ? [...vm.observation.species] : [...vm.observation.species.filter(s => vm.observation.selectedSpecies.some(ss => ss.id == s.id))];

            vm.onSelectedSpeciesChange();
        };

        vm.onSelectedSpeciesChange = () => {
            if (!vm.observation.markerIsSet) {
                return
            }
            if (vm.observation.selectedSpecies.length > 0) {
                mapHelper.setMarkerTooltipText(1, vm.observation.selectedSpecies[0].label);
            } else {
                mapHelper.closeMakersToolTip(1);
            }
        };

        vm.onMapClick = (params) => {
            if (!vm.observation.markerIsSet) {
                mapHelper.addMarker(params.latlng.lat, params.latlng.lng, undefined, 1, { draggable: true });
                vm.observation.markerIsSet = true;
            } else {
                mapHelper.setMarkerlatlng(1, params.latlng.lat, params.latlng.lng);
            }

            if (vm.observation.selectedSpecies.length > 0) {
                mapHelper.setMarkerTooltipText(1, vm.observation.selectedSpecies[0].label);
            }
        };

        vm.onAddObservation = () => {
            if (!$rootScope.isAuthenticated) {
                alert('Пожалуйста, авторизуйтесь для получения возможности добавления новых наблюдений.');
                return;
            }

            var species = vm.observation.selectedSpecies[0];
            var latLng = mapHelper.getMarkerlatlng(1);

            var errorText = '';
            if (!species) {
                errorText += 'Пожалуйста, выберете вид для добавления.';
            }
            if (!latLng) {
                errorText += 'Пожалуйста, выберете место наблюдения.'
            }

            if (errorText) {
                alert(errorText);
                return;
            }

            observationFactory.add(latLng.lat, latLng.lng, vm.observation.description, vm.observation.date,  species.id)
                .then(r => {
                    alert(species.label + ' был добавлен.');
                });
        }

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
                scrollableHeight: '400px',
                selectionLimit: 1
            };
        };

        vm.convertCategory = (category) => {
            switch (category) {
                case 1:
                    return 'I';
                case 2:
                    return 'II';
                case 3:
                    return 'III';
                case 4:
                    return 'IV';
                case 5:
                    return 'V';
            }
        };

        vm.getTodayDateString = () => {
            var today = new Date();
            today.setHours(today.getHours() + 3);

            return today.toISOString().substring(0, 10);
        };
    }
);