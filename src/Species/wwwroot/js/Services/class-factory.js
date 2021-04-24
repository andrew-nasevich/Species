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
        }
    }
});