'use strict'

var accountFactoryModule = angular.module('accountFactoryModule', []);

accountFactoryModule.factory('accountFactory', function ($http,  $q) {
    return {
        getById: function (id) {
            var deferred = $q.defer();

            $http.get(`/api/account/getById?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Произошла ошибка: ${error.message}`);
            });

            return deferred.promise;
        },
        getAccounts: function () {
            var deferred = $q.defer();

            $http.get(`/api/account/getAccounts`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Произошла ошибка: ${error.message}`);
            });

            return deferred.promise;
        },
        getRoles: function () {
            var deferred = $q.defer();

            $http.get(`/api/account/getRoles`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`Произошла ошибка: ${error.message}`);
            });

            return deferred.promise;
        },
        addAccountRole: function (accountId, roleId) {
            var deferred = $q.defer();

            $http.get(`/api/account/AddAccountRole?accountId=${accountId}&roleId=${roleId}`).then(responce => {
                deferred.resolve();
            }, error => {
                deferred.reject(`Произошла ошибка: ${error.message}`);
            });

            return deferred.promise;
        },
        deleteAccountRole: function (accountId, roleId) {
            var deferred = $q.defer();

            $http.get(`/api/Account/DeleteAccountRole?accountId=${accountId}&roleId=${roleId}`).then(responce => {
                deferred.resolve();
            }, error => {
                deferred.reject(`Произошла ошибка: ${error.message}`);
            });

            return deferred.promise;
        },
    }
});