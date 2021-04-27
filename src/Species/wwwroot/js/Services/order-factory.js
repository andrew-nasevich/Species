'use strict'

var orderFactoryModule = angular.module('orderFactoryModule', []);

orderFactoryModule.factory('orderFactory', function ($http, $q) {
    return {
        get: function () {
            var deferred = $q.defer();

            $http.get(`/api/Order/Orders/`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error has occurred ${error.message}`);
            });

            return deferred.promise;
        },
        update: function (order) {
            var deferred = $q.defer();

            $http.put(`/api/Order/update/`, order).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        delete: function (id) {
            var deferred = $q.defer();

            $http.delete(`/api/Order/delete/?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        create: function (order) {
            var deferred = $q.defer();

            $http.post(`/api/Order/create/`, order).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
    }
});