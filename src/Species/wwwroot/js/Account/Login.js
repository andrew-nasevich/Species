'use strict'

var LoginModule = angular.module('LoginModule', ['ngRoute', 'pleasewait']);

LoginModule.controller('LoginController', ['$http', '$window', '$pleasewait',
    function LoginController($http, $window, $pleasewait) {
        let self = this;

        self.account = {};

        self.onLogin = function () {
            $pleasewait.show();
            $http.post('/API/Account/Login', self.account).then(
                s => {
                    $pleasewait.hide();
                    $window.location.href = '/Observation/Index'
                },
                e => {
                    $pleasewait.hide();
                    console.log(e); alert("");
                });
        }
    }
]);