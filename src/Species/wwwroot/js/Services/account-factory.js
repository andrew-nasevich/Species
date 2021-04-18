'use strict'

var accountFactoryModule = angular.module('accountFactoryModule', []);

accountFactoryModule.factory('accountFactory', function ($http,  $q) {
    return {
        getById: function (id) {
            var deferred = $q.defer();

            $http.get(`/api/account/getById?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        }
    }
});