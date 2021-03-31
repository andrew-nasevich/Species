'use strict'

var LoginModule = angular.module('LoginModule', ['ngRoute']);

LoginModule.controller('LoginController', ['$http', '$window',
    function LoginController($http, $window) {
        let self = this;

        self.account = {};

        self.onLogin = function () {
            $http.post('/API/Account/Login', self.account).then(
                s => { $window.location.href = '/Species/Index' },
                e => { console.log(e); alert(""); });
        }
    }
]);