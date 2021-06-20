'use strict'

var dialogModule = angular.module('dialog', ['ui.bootstrap']);

dialogModule.factory('$dialog',
    function ($uibModal) {
        return {
            alert: (message) => {
                const dialog = $uibModal.open({
                    ariaLabelledBy: 'modal-title',
                    keyboard: false,
                    template: `<alert 
                                message="$ctrl.message"                                                      
                                $close="$close(result)"/>`,
                    controllerAs: '$ctrl',
                    controller: ['message',
                        function (message) {
                            const $ctrl = this;
                            $ctrl.message = message;
                        }],
                    resolve: {
                        message: () => {
                            return angular.copy(message);
                        },
                    }
                });

                return dialog.result;
            },
            confirm: (message) => {
                const dialog = $uibModal.open({
                    ariaLabelledBy: 'modal-title',
                    keyboard: false,
                    template: `<confirm 
                                message="$ctrl.message"                                                      
                                $close="$close()"
                                $dismiss="$dismiss()"/>`,
                    controllerAs: '$ctrl',
                    controller: ['message',
                        function (message) {
                            const $ctrl = this;
                            $ctrl.message = message;
                        }],
                    resolve: {
                        message: () => {
                            return angular.copy(message);
                        },
                    }
                });

                return dialog.result;
            }

        };
    });


dialogModule.component('alert', {
    bindings: {
        message: '=',
        $close: '&',
    },
    templateUrl: '/templates/Dialog/alert.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.close = () => {
            vm.$close();
        };
    }
});

dialogModule.component('confirm', {
    bindings: {
        message: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/Dialog/confirm.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller() {
        const vm = this;

        vm.close = () => {
            vm.$dismiss();
        };

        vm.onOk = () => {
            vm.$close();
        };
    }
});