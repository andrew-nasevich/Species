'use strict'

var authorizationModule = angular.module('authorizationModule', ['pleasewait']);

authorizationModule.component('authorization', {
    bindings: {
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/authorization/authorization.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($http, $window, $pleasewait) {
        const vm = this;

        const states = {
            login: 'login',
            registration: 'registreation'
        };

        vm.states = angular.copy(states);
        vm.state = states.login;

        vm.changeState = (state) => {
            vm.state = state;
        };

        vm.account = {};

        vm.onLogin = function () {
            if (vm.studentForm.$invalid) {
                alert('Пожалуйста, заполните все поля.');
                return;
            }

            $pleasewait.show();
            $http.post('/API/Account/Login', vm.account).then(
                s => {
                    $pleasewait.hide();
                    
                },
                e => {
                    $pleasewait.hide();
                    console.log(e); alert(e.message);
                });
        };

        vm.onRegister = function () {
            $http.post('/API/Account/Register', vm.account).then(
                s => { },
                e => { console.log(e); alert(e.message); });
        }

        vm.close = () => {
            vm.$dismiss({
                reason: 'cancel',
            });
        };
    }
});