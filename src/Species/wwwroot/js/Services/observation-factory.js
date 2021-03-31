'use strict'

var observationFactoryModule = angular.module('observationFactoryModule', []);

observationFactoryModule.factory('observationFactory', function ($http, $window, $q) {
    return {
        get: function () {
            var deferred = $q.defer();

            $http.get(`/api/observation/observations/`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        },
        add: function (latitude, longitude, description, speciesId, accountId) {
            var deferred = $q.defer();

            $http.post(`/api/Observation/AddObservation/`, {
                latitude: latitude,
                longitude: longitude,
                description: description,
                speciesId: speciesId,
                accountId: accountId
            }).then(responce => {
                deferred.resolve();
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        }
    }
});