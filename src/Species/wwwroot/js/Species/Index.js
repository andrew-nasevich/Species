'use strict'

var speciesIndex = angular.module('speciesIndex', [
    'angularjs-dropdown-multiselect',
    'observationFactoryModule',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'mapHelper'
]);

speciesIndex.controller('speciesIndexController',
    function speciesIndexController($http, $scope, observationFactory, speciesFactory, speciesTypeFactory, mapHelper) {
        let self = this;

        self.search = {};

        self.$onInit = () => {
            observationFactory.get().then(result => {
                self.search.allObservations = angular.copy(result);

                self.search.allObservations.forEach(o => mapHelper.addMarker(o.latitude, o.longitude, o.description));
            });
            speciesFactory.get().then(result => {
                self.allSpecies = angular.copy(result.map(o => { return { label: o.russianName, ...o } }));
                self.search.species = angular.copy(self.allSpecies);
                self.search.selectedSpecies = [...self.search.species];
            });
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                self.search.speciesTypes = angular.copy(self.allSpeciesTypes);
                self.search.selectedSpeciesTypes = [...self.search.speciesTypes];
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

            self.config.multiselectSettings = {
                scrollableHeight: '400px',
                scrollable: true,
                enableSearch: true
            };
        };
    }
);