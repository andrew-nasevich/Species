'use strict'

var accountRolesModule = angular.module('appBody', [
    'accountFactoryModule',
    'pleasewait',
    'ui.router',
    'dialog'
]);

accountRolesModule.config(($stateProvider, $urlServiceProvider) => {
    $urlServiceProvider.rules.otherwise({ state: 'accountRoles' });

    $stateProvider
        .state('accountRoles', {
            url: '',
            component: 'accountRoles'
        })
});


accountRolesModule.component('accountRoles', {
    templateUrl: '/templates/AccountRoles/accountRoles.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller(accountFactory, $pleasewait, $q, $rootScope, $dialog) {
        const vm = this;

        vm.$onInit = () => {
            $pleasewait.show();

            var promises = {
                accounts: accountFactory.getAccounts(),
                roles: accountFactory.getRoles()
            };

            $q.all(promises).then(data => {
                vm.accounts = data.accounts;
                vm.roles = data.roles;

                vm.accounts.forEach(account => {
                    var roles = [];
                    account.roles.forEach(r => roles[r] = true);
                    account.roles = roles;
                });

                $pleasewait.hide();
            });
        };

        vm.onAccountRoleChange = (accountId, roleId, isNew) => {
            if ($rootScope.account.id == accountId) {
                vm.accounts.find(a => a.id == accountId).roles['Admin'] = true;

                $dialog.alert('Вы не можете забирать права у себя.');
                return;
            }

            $pleasewait.show();
            if (isNew) {
                accountFactory.addAccountRole(accountId, roleId).finally(() => $pleasewait.hide());
            } else {
                accountFactory.deleteAccountRole(accountId, roleId).finally(() => $pleasewait.hide());
            }
        };
    }
});