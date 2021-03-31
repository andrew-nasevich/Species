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

        $scope.setting1 = {
            scrollableHeight: '200px',
            scrollable: true,
            enableSearch: true
        };

        $scope.setting2 = {
            scrollableHeight: '200px',
            scrollable: true,
            enableSearch: false
        };

        self.$onInit = () => {
            observationFactory.get().then(result => {
                self.allObservations = angular.copy(result);

                self.allObservations.forEach(o => mapHelper.addMarker(o.latitude, o.longitude, o.description));
            });
            speciesFactory.get().then(result => {
                self.allSpecies = angular.copy(result);
            });
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes = angular.copy(result);
                self.speciesTypesNames = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                self.speciesTypes = angular.copy(self.speciesTypesNames);
            });

            mapHelper.init();
        };

        self.onSpeciesTypesChage = () => {
            self = self;
        };
    }
);