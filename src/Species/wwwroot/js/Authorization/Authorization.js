'use strict'

var authorizationModule = angular.module('authorizationModule', ['authService', 'dialog']);

authorizationModule.component('authorization', {
    bindings: {
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/authorization/authorization.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller(auth, $dialog) {
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
                $dialog.alert('Пожалуйста, заполните все поля.');
                return;
            }

            auth.login(vm.account).then(
                r => {
                    vm.$close({
                        account: r.data
                    });
                },
                e => {
                    $dialog.alert('Неверный e-email или пароль.');
                });
        };
        
        vm.onRegister = function () {
            if (vm.authForm.$invalid) {
                $dialog.alert('Пожалуйста, заполните все поля.');
                return;
            }

            auth.register(vm.account).then(
                r => {
                    vm.$close({
                        account: r.data
                    });
                },
                e => {
                    $dialog.alert('Пользователь с таким e-email уже существует. Пожалуйста, выберите другой e-mail.');
                });
        };

        vm.close = () => {
            vm.$dismiss({
                reason: 'cancel',
            });
        };
    }
});