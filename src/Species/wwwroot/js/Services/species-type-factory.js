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
        },
        update: function (speciesType) {
            var deferred = $q.defer();

            $http.put(`/api/SpeciesType/update/`, speciesType).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        delete: function (id) {
            var deferred = $q.defer();

            $http.delete(`/api/SpeciesType/delete/?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        create: function (speciesType) {
            var deferred = $q.defer();

            $http.post(`/api/SpeciesType/create/`, speciesType).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
    }
});