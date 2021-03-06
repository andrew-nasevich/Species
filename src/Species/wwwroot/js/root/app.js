'use strict'

angular.module('appBody',[]);

var app = angular.module('app', [
    'pleasewait',
    'authService',
    'authorizationModule',
    'appBody',
    'dialog']);

app.controller('appController',
    function ($uibModal, $pleasewait, auth, $rootScope, $dialog) {
        let vm = this;

        vm.$onInit = () => {
            $pleasewait.show();
            $rootScope.authPromise = auth.getCurrentAccount();

            $rootScope.authPromise.then(account => {
                $rootScope.isAuthenticated = account != null;
                $rootScope.isAdmin = $rootScope.isAuthenticated && !!account.roles.find(r => r == 'Admin');
                $rootScope.account = account;
            }).finally(() => {
                $pleasewait.hide();
            });
        };

        vm.onAuthorization = () => {
            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'bg',

                template: `<authorization
                            $close="$close(account)"
                            $dismiss="$dismiss(reason)"/>`,
                controllerAs: '$ctrl'
            });

            dialog.result.then((account) => {
                $rootScope.isAuthenticated = true;
                $rootScope.isAdmin = !!account.roles.find(r => r == 'Admin');
                $rootScope.account = account;
            });
        };

        vm.onLogout = () => {
            $pleasewait.show();
            auth.logout().then(s => {
                $rootScope.isAuthenticated = false;
                $rootScope.isAdmin = false;
                $rootScope.account = {};

                $pleasewait.hide();

                $dialog.alert('Выход выполнен успешно.');
            });
        };
    }
);