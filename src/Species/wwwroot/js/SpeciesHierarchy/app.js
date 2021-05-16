'use strict'

var speciesHierarchy = angular.module('appBody', [
    'angularjs-dropdown-multiselect',
    'speciesTypeFactoryModule',
    'classFactoryModule',
    'orderFactoryModule',
    'speciesFactoryModule',
    'ngCookies',
    'ui.bootstrap',
    'pleasewait',
    'ui.router',
]);

speciesHierarchy.controller('speciesHierarchyController', function ($location, $state) {
    const vm = this;

    vm.$onInit = () => {
        vm.state = $location.url().slice(1);
    };
    
    vm.goToState = (state) => {
        vm.state = state;
        $state.go(state);
    };
});

speciesHierarchy.config(($stateProvider, $urlServiceProvider) => {
    $urlServiceProvider.rules.otherwise({ state: 'species' });

    $stateProvider
        .state('species', {
            url: '/species',
            component: 'species'
        })
        .state('orders', {
            url: '/orders',
            component: 'orders'
        })
        .state('classes', {
            url: '/classes',
            component: 'classes'
        })
        .state('speciesTypes', {
            url: '/speciesTypes',
            component: 'speciesTypes'
        });
});