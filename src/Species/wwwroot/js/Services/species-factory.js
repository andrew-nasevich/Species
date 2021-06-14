'use strict'

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
        update: function (species, imageFile) {
            var deferred = $q.defer();

            var fd = new FormData();
            for (var prop in species) {
                fd.append(prop, species[prop]);
            }
            fd.append('imageFile', imageFile);

            $http.put(`/api/species/update/`, fd, {
                transformRequest: angular.identity,
                headers: { 'Content-Type': undefined }
            }).then(responce => {
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
        create: function (species, imageFile) {
            var deferred = $q.defer();

            var fd = new FormData();
            for (var prop in species) {
                fd.append(prop, species[prop]);
            }
            fd.append('imageFile', imageFile); 

            $http.post(`/api/species/create/`, fd, {
                transformRequest: angular.identity,
                headers: { 'Content-Type': undefined }
            }).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Error: ${error.code}`);
            });

            return deferred.promise;
        },
    }
});