'use strict'

var RegisterModule = angular.module('RegisterModule', ['ngRoute']);

RegisterModule.controller('RegisterController', ['$http', '$window',
    function RegisterController($http, $window) {
        let self = this;

        self.account = {};

        self.onRegister = function (dateStr) {
            $http.post('/API/Account/Register', self.account).then(
                s => { $window.location.href = '/Home/Index' },
                e => { console.log(e); alert(""); });
        }
    }
]);