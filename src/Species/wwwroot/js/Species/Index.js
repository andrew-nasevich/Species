'use strict'

var speciesIndex = angular.module('speciesIndex', [
    'observationFactoryModule',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'mapHelper'
]);

speciesIndex.controller('speciesIndexController',
    function speciesIndexController($http, $window, observationFactory, speciesFactory, speciesTypeFactory, mapHelper) {
        let self = this;

        self.$onInit = () => {
            observationFactory.get().then(result => {
                self.allObservations = result;
            });
            speciesFactory.get().then(result => {
                self.allSpecies = result;
            });
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes =  result;
            });

            mapHelper.init();
        };
    }
);