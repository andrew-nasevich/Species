'use strict'

var authModule = angular.module('authService', ['pleasewait', 'ngCookies',]);

authModule.factory('auth', function ($http, $q, $pleasewait, $cookies) {
    return {
        getAccountById: function (id) {
            var deferred = $q.defer();

            $http.get(`/api/account/getById?id=${id}`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.reject(`An error occurred: ${error.message}`);
            });

            return deferred.promise;
        },
        getCurrentAccount: function(){
            var deferred = $q.defer();

            $http.get(`/api/account/GetCurrentAccount`).then(responce => {
                deferred.resolve(responce.data);
            }, error => {
                deferred.resolve(null);
            });

            return deferred.promise;
        },
        isAdmin: function () {
            var accountPromise = this.getCurrentAccount();
            var deferred = $q.defer();

            accountPromise.then(
                responce => {

                    deferred.resolve(responce ? responce.roles.find(r => r == 'Admin') : null);
                },
                e => {
                    deferred.resolve(false);
                });

            return deferred.promise;
        },
        login: function (account) {
            $pleasewait.show();
            var promise = $http.post('/API/Account/Login', account);
            promise.then(
                s => {
                    $pleasewait.hide();
                },
                e => {
                    $pleasewait.hide();
                    console.log(e);
                    alert(e.data);
                });

            return promise;
        },
        register: function (account) {
            $pleasewait.show();
            var promise = $http.post('/API/Account/Register', account);

            promise.then(
                s => {
                    $pleasewait.hide();
                },
                e => {
                    $pleasewait.hide();
                    console.log(e);
                    alert(e.data);
                });

            return promise;
        },
        logout: function () {
            var promise = $http.get('/API/Account/Logout');
            promise.then(
                s => {},
                e => {
                    console.log(e);
                    alert(e.data);
                });

            return promise;
        },
    }
});