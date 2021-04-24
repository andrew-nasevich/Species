'use strict'

var observationIndex = angular.module('observationIndex', [
    'angularjs-dropdown-multiselect',
    'observationFactoryModule',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'accountFactoryModule',
    'mapHelper',
    'ngCookies',
    'pleasewait'
]);

observationIndex.controller('observationIndexController',
    function observationIndexController($q, $cookies, observationFactory, speciesFactory, speciesTypeFactory, accountFactory, mapHelper, $pleasewait, $uibModal) {
        $pleasewait.show();
        let self = this;

        self.search = {};

        self.$onInit = () => {

            var observationPromise = $q.defer();
            observationFactory.get().then(result => {
                self.search.allObservations = angular.copy(result);

                observationPromise.resolve();
            });

            var speciesPromise = $q.defer();
            speciesFactory.get().then(result => {
                self.allSpecies = angular.copy(result.map(o => { return { label: o.russianName + ' - ' + self.convertCategory(o.category), ...o } }));
                self.search.species = angular.copy(self.allSpecies);
                self.search.selectedSpecies = [...self.search.species];

                self.search.categories = self.allSpecies
                    .map(s => s.category)
                    .filter((value, index, self) => {
                    return self.indexOf(value) === index;
                    })
                    .sort()
                    .map(s => {
                        return {
                            label: self.convertCategory(s),
                            category: s
                        };
                    });
                self.search.selectedCategories = [...self.search.categories];

                speciesPromise.resolve();
            });

            var speciesTypesPromise = $q.defer();
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                self.search.speciesTypes = angular.copy(self.allSpeciesTypes);
                self.search.selectedSpeciesTypes = [...self.search.speciesTypes];

                speciesTypesPromise.resolve();
            });

            Promise.all([observationPromise.promise, speciesPromise.promise]).then(() => {
                self.search.allObservations.forEach(o => {
                    o.species = self.allSpecies.find(s => s.id == o.speciesId);
                });

                self.search.allObservations.forEach(o => {
                    mapHelper.addMarker(o.latitude, o.longitude, o.species.label, o.id);
                    mapHelper.registerOnClickMarker(o.id, () => self.onOpenInfo(o));
                });
                
                $pleasewait.hide();
            });

            var today = new Date();
            self.today = today.toISOString().substring(0, 10);
            self.search.toDate = today;

            var id = $cookies.getObject('userId');
            accountFactory.getById(id).then((r) => {
                self.account = r;
            });

            self.search.showMine = false;

            mapHelper.init();
            self.configMultiselect();
        };

        self.onSpeciesTypesChage = () => {
            var species = self.allSpecies.filter(s => self.search.selectedSpeciesTypes.some(st => st.id == s.speciesType.id));
            self.search.species = species;
            self.search.selectedSpecies = [...species.filter(ss => self.search.selectedSpecies.some(s => s.id == ss.id))];
        };

        self.onSearch = () => {
            
            var species = self.search.selectedSpecies;
            var categories = self.search.selectedCategories;

            var observations = self.search.allObservations.filter(o => species.some(s => s.id == o.speciesId))
            if (self.search.fromDate) {
                observations = observations.filter(o => o.date >= self.search.fromDate.toISOString());
            }
            observations = observations.filter(o => o.date <= self.search.toDate.toISOString());
            observations = observations.filter(o => categories.some(c => c.category == o.species.category));

            if (self.search.showMine) {
                if (self.account.id) {
                    observations = observations.filter(o => o.accountId == self.account.id);   
                }
            }

            self.search.allObservations.forEach(o => {
                if (observations.includes(o)) {
                    mapHelper.showMarker(o.id);
                } else {
                    mapHelper.hideMarker(o.id);
                }
            });
        };

        self.deleteObservation = (observation) => {
            $pleasewait.show();
            var index = self.search.allObservations.indexOf(self.search.allObservations.find(o => o.id == observation.id));
            self.search.allObservations.splice(index, 1);

            observationFactory.remove(observation.id).then(() => {
                mapHelper.removeMarker(observation.id);
                $pleasewait.hide();
            });
            
        };

        self.onOpenInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'lg',
                template: `<observation-info 
                            observation = "$ctrl.observation"
                            current-account = "$ctrl.currentAccount"
                            species="$ctrl.species"
                            species-types="$ctrl.speciesTypes"
                            delete-observation = "$ctrl.deleteObservation(observation)"
                            on-species-types-chage = "$ctrl.onSpeciesTypesChage"
                            $close="$close(observation)"
                            $dismiss="$dismiss(reason)"/>`,
                controllerAs: '$ctrl',
                controller: ['observation', 'currentAccount', 'species', 'speciesTypes', 'deleteObservation', 'onSpeciesTypesChage',
                    function (observation, currentAccount, species, speciesTypes, deleteObservation, onSpeciesTypesChage) {
                        const $ctrl = this;
                        $ctrl.observation = observation;
                        $ctrl.currentAccount = currentAccount;
                        $ctrl.species = species;
                        $ctrl.speciesTypes = speciesTypes;
                        $ctrl.deleteObservation = deleteObservation;
                        $ctrl.onSpeciesTypesChage = onSpeciesTypesChage;
                }],
                resolve: {
                    observation: () => {
                        return angular.copy(entity);
                    },
                    currentAccount: () => {
                        return angular.copy(self.account);
                    },
                    species: () => {
                        return angular.copy(self.allSpecies);
                    },
                    speciesTypes: () => {
                        return angular.copy(self.allSpeciesTypes);
                    },
                    deleteObservation: () => {
                        return self.deleteObservation;
                    },
                    onSpeciesTypesChage: () => {
                        return self.onSpeciesTypesChage;
                    }
                }
            });

            dialog.result.then((observation) => {
                $pleasewait.show();

                observationFactory.update(observation).then(r => {
                    var index = self.search.allObservations.indexOf(self.search.allObservations.find(o => o.id == observation.id));

                    observation.species = self.allSpecies.find(s => s.id == observation.speciesId);
                    self.search.allObservations[index] = observation;

                    mapHelper.setMarkerTooltipText(observation.id, observation.species.label);
                    mapHelper.unregisterAllOnClickMarker(observation.id);
                    mapHelper.registerOnClickMarker(observation.id, () => self.onOpenInfo(observation));
                })
                    .finally(() => $pleasewait.hide());
            });
        };


        self.configMultiselect = () => {

            self.config = {}
            self.config.multiselectTranslation = {
                checkAll: 'Выбрать все',
                uncheckAll: 'Сбросить',
                buttonDefaultText: 'Выбрать',
                selectionCount: 'выбрано',
                searchPlaceholder: 'Искать...',
                dynamicButtonTextSuffix: 'выбрано',
            };

            self.config.speciesTypesMultiselectSettings = {
                scrollableHeight: '200px',
            };
            self.config.multiselectSettings = {
                scrollableHeight: '300px',
                scrollable: true,
                enableSearch: true
            };
        };

        self.convertCategory = (category) => {
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
    }
);