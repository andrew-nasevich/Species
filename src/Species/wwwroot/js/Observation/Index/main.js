'use strict'

var observationMain = angular.module('appBody', [
    'angularjs-dropdown-multiselect',
    'observationFactoryModule',
    'speciesTypeFactoryModule',
    'classFactoryModule',
    'orderFactoryModule',
    'speciesFactoryModule',
    'accountFactoryModule',
    'mapHelper',
    'iconFactoryModule',
    'authService',
    'pleasewait',
    'authorizationModule'
]);

observationMain.controller('observationMainController',
    function observationMainController($q, observationFactory, speciesTypeFactory, classFactory, orderFactory, speciesFactory, mapHelper, iconFactory, $pleasewait, $uibModal, $rootScope) {
        let vm = this;

        $pleasewait.show();

        vm.$onInit = () => {

            var today = new Date();
            vm.today = vm.getTodayDateString();

            vm.search = {
                showMine: false,
                toDate: today
            };

            var promises = {
                speciesTypes: speciesTypeFactory.get(),
                classes: classFactory.get(),
                orders: orderFactory.get(),
                species: speciesFactory.get(),
                observations: observationFactory.get(),
            };

            $q.all(promises).then(data => {             
                vm.allSpeciesTypes = angular.copy(data.speciesTypes.map(o => { return { label: o.name, ...o } }));
                vm.search.speciesTypes = angular.copy(vm.allSpeciesTypes);
                vm.search.selectedSpeciesTypes = [...vm.search.speciesTypes];

                vm.allClasses = angular.copy(data.classes.map(c => { return { label: c.name, ...c } }));
                vm.search.classes = angular.copy(vm.allClasses);
                vm.search.selectedClasses = [...vm.search.classes];

                vm.allOrders = angular.copy(data.orders.map(o => { return { label: o.name, ...o } }));
                vm.search.orders = angular.copy(vm.allOrders);
                vm.search.selectedOrders = [...vm.search.orders];

                vm.allSpecies = angular.copy(data.species.map(o => { return { label: o.russianName + ' - ' + vm.convertCategory(o.category), ...o } }));
                vm.search.species = angular.copy(vm.allSpecies);
                vm.search.selectedSpecies = [...vm.search.species];

                vm.search.categories = vm.allSpecies
                    .map(s => s.category)
                    .filter((value, index, vm) => {
                        return vm.indexOf(value) === index;
                    })
                    .sort()
                    .map(s => {
                        return {
                            label: vm.convertCategory(s),
                            category: s
                        };
                    });
                vm.search.selectedCategories = [...vm.search.categories];

                vm.search.allObservations = angular.copy(data.observations);
                vm.search.allObservations.forEach(o => {
                    o.species = vm.allSpecies.find(s => s.id == o.speciesId);
                });
                vm.search.allObservations.forEach(o => {
                    var icon = iconFactory.getMarkerIcon(o.species.category);
                    mapHelper.addMarker(o.latitude, o.longitude, o.species.russianName, o.id, { icon: icon });
                    mapHelper.registerOnClickMarker(o.id, () => vm.onOpenInfo(o));
                });

                $pleasewait.hide();
            });

            mapHelper.init();
            vm.configMultiselect();
        };

        vm.onSelectedSpeciesTypesChange = () => {
            vm.search.classes = vm.allClasses.filter(c => vm.search.selectedSpeciesTypes.some(st => st.id == c.speciesTypeId));
            vm.search.selectedClasses = [...vm.search.classes.filter(c => vm.search.selectedClasses.some(sc => sc.id == c.id))];

            vm.onSelectedClassesChange();
        };

        vm.onSelectedClassesChange = () => {
            vm.search.orders = vm.allOrders.filter(o => vm.search.selectedClasses.some(c => c.id == o.classId));
            vm.search.selectedOrders = [...vm.search.orders.filter(o => vm.search.selectedOrders.some(so => so.id == o.id))];

            vm.onSelectedOrdersChange();
        };

        vm.onSelectedOrdersChange = () => {
            vm.search.species = vm.allSpecies.filter(s => vm.search.selectedOrders.some(o => o.id == s.orderId));
            vm.search.selectedSpecies = [...vm.search.species.filter(ss => vm.search.selectedSpecies.some(s => s.id == ss.id))]; 
        };

        vm.onSelectedCategoriesChange = () => {
            vm.search.species = vm.allSpecies.filter(s => vm.search.selectedCategories.some(c => c.category == s.category));
            vm.search.selectedSpecies = [...vm.search.species.filter(ss => vm.search.selectedSpecies.some(s => s.id == ss.id))];
        };

        vm.onSearch = () => {

            var species = vm.search.selectedSpecies;
            var categories = vm.search.selectedCategories;

            var observations = vm.search.allObservations.filter(o => species.some(s => s.id == o.speciesId))
            if (vm.search.fromDate) {
                observations = observations.filter(o => o.date >= vm.search.fromDate.toISOString());
            }
            observations = observations.filter(o => o.date <= vm.search.toDate.toISOString());
            observations = observations.filter(o => categories.some(c => c.category == o.species.category));

            if (vm.search.showMine) {
                if ($rootScope.account) {
                    observations = observations.filter(o => o.accountId == $rootScope.account.id);   
                }
            }

            vm.search.allObservations.forEach(o => {
                if (observations.includes(o)) {
                    mapHelper.showMarker(o.id);
                } else {
                    mapHelper.hideMarker(o.id);
                }
            });
        };

        vm.deleteObservation = (observation) => {
            $pleasewait.show();
            var index = vm.search.allObservations.indexOf(vm.search.allObservations.find(o => o.id == observation.id));
            vm.search.allObservations.splice(index, 1);

            observationFactory.remove(observation.id).then(() => {
                mapHelper.removeMarker(observation.id);
                $pleasewait.hide();
            });
            
        };

        vm.onOpenInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'lg',

                template: `<observation-info 
                            observation = "$ctrl.observation"
                            all-species-types = "$ctrl.allSpeciesTypes"
                            all-classes = "$ctrl.allClasses"
                            all-orders = "$ctrl.allOrders"
                            all-species="$ctrl.allSpecies"
                            delete-observation = "$ctrl.deleteObservation(observation)"
                            $close="$close(observation)"
                            $dismiss="$dismiss(reason)"/>`,
                controllerAs: '$ctrl',
                controller: ['observation', 'allSpeciesTypes', 'allClasses', 'allOrders', 'allSpecies', 'deleteObservation',
                    function (observation, allSpeciesTypes, allClasses, allOrders, allSpecies, deleteObservation) {
                        const $ctrl = this;
                        $ctrl.observation = observation;
                        $ctrl.allSpeciesTypes = allSpeciesTypes;
                        $ctrl.allClasses = allClasses;
                        $ctrl.allOrders = allOrders;
                        $ctrl.allSpecies = allSpecies;
                        $ctrl.deleteObservation = deleteObservation;
                }],
                resolve: {
                    observation: () => {
                        return angular.copy(entity);
                    },
                    allSpeciesTypes: () => {
                        return angular.copy(vm.allSpeciesTypes);
                    },
                    allClasses: () => {
                        return angular.copy(vm.allClasses);
                    },
                    allOrders: () => {
                        return angular.copy(vm.allOrders);
                    },
                    allSpecies: () => {
                        return angular.copy(vm.allSpecies);
                    },
                    deleteObservation: () => {
                        return vm.deleteObservation;
                    },
                }
            });

            dialog.result.then((observation) => {
                $pleasewait.show();

                observationFactory.update(observation).then(r => {
                    var index = vm.search.allObservations.indexOf(vm.search.allObservations.find(o => o.id == observation.id));

                    observation.species = vm.allSpecies.find(s => s.id == observation.speciesId);
                    vm.search.allObservations[index] = observation;

                    mapHelper.setMarkerTooltipText(observation.id, observation.species.label);
                    mapHelper.unregisterAllOnClickMarker(observation.id);
                    mapHelper.registerOnClickMarker(observation.id, () => vm.onOpenInfo(observation));
                })
                    .finally(() => $pleasewait.hide());
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

            vm.config.smallMultiselect = {
                scrollableHeight: '200px',
            };

            vm.config.multiselectSettings = {
                scrollableHeight: '400px',
                scrollable: true,
                enableSearch: true
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
            }
        };

        vm.getTodayDateString = () => {
            var today = new Date();
            today.setHours(today.getHours() + 3);

            return today.toISOString().substring(0, 10);
        };
    }
);