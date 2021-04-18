﻿'use strict'

var speciesFactoryModule = angular.module('speciesFactoryModule', []);

speciesFactoryModule.factory('speciesFactory', function ($http, $window, $q) {
    return {
        get: function () {
            var deferred = $q.defer();

            $http.get(`/api/species/species/`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`/api/species/species isn't available. ${error.code}`);
            });

            return deferred.promise;
        },
        update: function (species) {
            var deferred = $q.defer();

            $http.put(`/api/species/update/`, species).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        delete: function (id) {
            var deferred = $q.defer();

            $http.delete(`/api/species/delete/?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
        create: function (species) {
            var deferred = $q.defer();

            $http.post(`/api/species/create/`, species).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
    }
});