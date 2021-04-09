'use strict'

var observationIndex = angular.module('observationIndex', [
    'angularjs-dropdown-multiselect',
    'observationFactoryModule',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'mapHelper',
    'ngCookies'
]);

observationIndex.controller('observationIndexController',
    function observationIndexController($q, $cookies, observationFactory, speciesFactory, speciesTypeFactory, mapHelper) {
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

                self.search.allObservations.forEach(o => mapHelper.addMarker(o.latitude, o.longitude, o.species.label, o.id));
            });

            var today = new Date();
            self.today = today.toISOString().substring(0, 10);
            self.search.toDate = today;

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
                var id = $cookies.getObject('userId');
                if (id) {
                    observations = observations.filter(o => o.accountId == id);   
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
                case 5:
                    return 'V';
            }
        };
    }
);