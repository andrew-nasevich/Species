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
        }
    }
});