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
        add: function (latitude, longitude, description, date, speciesId) {
            var deferred = $q.defer();

            $http.post(`/api/Observation/Add/`, {
                latitude: latitude,
                longitude: longitude,
                description: description,
                date: date,
                speciesId: speciesId
            }).then(responce => {
                deferred.resolve();
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        },
        update: function (observation) {
            var deferred = $q.defer();

            $http.put(`/api/observation/update/`, observation).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        },
        remove: function (id) {
            var deferred = $q.defer();

            $http.delete(`/api/observation/delete/?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        },
    }
});