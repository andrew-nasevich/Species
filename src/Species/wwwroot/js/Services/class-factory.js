'use strict'

var classFactoryModule = angular.module('classFactoryModule', []);

classFactoryModule.factory('classFactory', function ($http, $q) {
    return {
        get: function () {
            var deferred = $q.defer();

            $http.get(`/api/Class/Classes/`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error has occurred ${error.message}`);
            });

            return deferred.promise;
        },
        update: function (classParam) {
            var deferred = $q.defer();

            $http.put(`/api/Class/update/`, classParam).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        delete: function (id) {
            var deferred = $q.defer();

            $http.delete(`/api/Class/delete/?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        create: function (classParam) {
            var deferred = $q.defer();

            $http.post(`/api/Class/create/`, classParam).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
    }
});