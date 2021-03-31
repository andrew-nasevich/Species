'use strict'

var speciesTypeFactoryModule = angular.module('speciesTypeFactoryModule', []);

speciesTypeFactoryModule.factory('speciesTypeFactory', function ($http, $window, $q) {
    return {
        get: function () {
            var deferred = $q.defer();

            $http.get(`/api/SpeciesType/speciesTypes/`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error has occurred ${error.message}`);
            });

            return deferred.promise;
        }
    }
});