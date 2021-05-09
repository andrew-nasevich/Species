'use strict'

var authorizationModule = angular.module('authorizationModule', ['pleasewait', 'authService']);

authorizationModule.component('authorization', {
    bindings: {
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/authorization/authorization.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($http, $pleasewait, auth) {
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
            if (vm.authForm.$invalid) {
                alert('Пожалуйста, заполните все поля.');
                return;
            }

            auth.login(vm.account).then(
                r => {
                    vm.$close({
                        account: r.data
                    });
                });
        };
        
        vm.onRegister = function () {
            if (vm.authForm.$invalid) {
                alert('Пожалуйста, заполните все поля.');
                return;
            }

            auth.register(vm.account).then(
                r => {
                    vm.$close({
                        account: r.data
                    });
                });
        };

        vm.close = () => {
            vm.$dismiss({
                reason: 'cancel',
            });
        };
    }
});