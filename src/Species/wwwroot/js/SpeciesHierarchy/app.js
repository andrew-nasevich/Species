'use strict'

var speciesHierarchy = angular.module('speciesHierarchy', [
    'angularjs-dropdown-multiselect',
    'speciesTypeFactoryModule',
    'classFactoryModule',
    'orderFactoryModule',
    'speciesFactoryModule',
    'accountFactoryModule',
    'ngCookies',
    'ui.bootstrap',
    'pleasewait',
    'ui.router',
]);

speciesHierarchy.config(($stateProvider, $urlServiceProvider) => {
    $urlServiceProvider.rules.otherwise({ state: 'species' });

    $stateProvider
        .state('species', {
            url: 'species',
            component: 'species'
        });
});