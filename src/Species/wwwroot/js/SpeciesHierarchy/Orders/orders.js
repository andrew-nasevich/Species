'use strict'

speciesHierarchy.component('orders', {
    templateUrl: '/templates/SpeciesHierarchy/Orders/orders.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($q, $cookies, $uibModal, speciesTypeFactory, classFactory, orderFactory, accountFactory, $pleasewait, ) {
        $pleasewait.show();
        let vm = this;

        vm.search = {};

        vm.rawOrder = {
            id: 0,
            latinName: '',
            description: '',
        };

        vm.$onInit = () => {

            var id = $cookies.getObject('userId');

            var promises = {
                account: accountFactory.getById(id),
                speciesTypes: speciesTypeFactory.get(),
                classes: classFactory.get(),
                orders: orderFactory.get(),
            };

            $q.all(promises).then(data => {
                vm.account = data.account;
                vm.isAdmin = !!vm.account.roles.find(r => r == 'Admin');

                vm.allSpeciesTypes = angular.copy(data.speciesTypes.map(o => { return { label: o.name, ...o } }));
                vm.search.speciesTypes = angular.copy(vm.allSpeciesTypes);
                vm.search.selectedSpeciesTypes = [...vm.search.speciesTypes];

                vm.allClasses = angular.copy(data.classes.map(c => { return { label: c.name, ...c } }));
                vm.search.classes = angular.copy(vm.allClasses);
                vm.search.selectedClasses = [...vm.search.classes];

                vm.allOrders = angular.copy(data.orders.map(o => { return { label: o.name, ...o } }));
                vm.allOrders.forEach(o => {
                    o.class = vm.allClasses.find(c => c.id == o.classId);
                    o.type = vm.allSpeciesTypes.find(t => t.id == o.class.speciesTypeId);
                });

                vm.search.orders = angular.copy(vm.allOrders);

                $pleasewait.hide();
            });

            vm.configMultiselect();
        };

        vm.onSelectedSpeciesTypesChange = () => {
            vm.search.classes = vm.allClasses.filter(c => vm.search.selectedSpeciesTypes.some(st => st.id == c.speciesTypeId));
            vm.search.selectedClasses = [...vm.search.classes.filter(c => vm.search.selectedClasses.some(sc => sc.id == c.id))];

            vm.onSelectedClassesChange();
        };

        vm.onSelectedClassesChange = () => {
            vm.search.orders = vm.allOrders.filter(o => vm.search.selectedClasses.some(c => c.id == o.classId));

        };

        vm.onOpenInfo = (entity) => {
            var result = vm.openOrderInfo(angular.copy(entity), false);

            result.then((order) => {
                $pleasewait.show();
                var index = vm.allOrders.indexOf(vm.allOrders.find(s => s.id == order.id));
                if (index >= 0) {
                    orderFactory.update(order).then(() => {
                        vm.allOrders[index] = angular.copy(order);

                        var orderIndex = vm.search.orders.indexOf(vm.search.orders.find(s => s.id == order.id));
                        vm.search.orders[orderIndex] = order;

                        $pleasewait.hide();
                    });
                }
            }, (result) => {
                if (result.reason == 'delete') {
                    vm.deleteOrder(result.entity);
                }
            });
        };

        vm.addNew = () => {
            var order = angular.copy(vm.rawOrder);
            var result = vm.openOrderInfo(order, true);

            result.then((order) => {
                $pleasewait.show();
                orderFactory.create(order).then((order) => {
                    order = {
                        ...order,
                        class: vm.allClasses.find(c => c.id == order.classId),
                        type: vm.allSpeciesTypes.find(t => t.id == order.class.speciesTypeId),
                    };

                    if (vm.search.selectedClasses.some(sc => sc.id == order.classId)) {
                        vm.search.orders.push(order);
                    }

                    vm.allOrders.push(order);
                    $pleasewait.hide();
                });
            });
        };

        vm.openOrderInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'bg',
                template: `<order-info 
                            all-species-types="$ctrl.allSpeciesTypes"                            
                            all-classes="$ctrl.allClasses"
                            all-orders="$ctrl.allOrders"
                            order="$ctrl.order"                            
                            is-editable="$ctrl.isEditable"
                            $close=$close(order)
                            $dismiss="$dismiss(result)"/>`,
                controllerAs: '$ctrl',
                controller: ['allSpeciesTypes', 'allClasses', 'allOrders', 'order', 'isEditable',
                    function (allSpeciesTypes, allClasses, allOrders, order, isEditable) {
                        const $ctrl = this;
                        $ctrl.allSpeciesTypes = allSpeciesTypes;
                        $ctrl.allClasses = allClasses;
                        $ctrl.allOrders = allOrders;
                        $ctrl.order = order;
                        $ctrl.isEditable = isEditable;
                    }],
                resolve: {
                    allSpeciesTypes: () => {
                        return angular.copy(vm.allSpeciesTypes);
                    },
                    allClasses: () => {
                        return angular.copy(vm.allClasses);
                    },
                    allOrders: () => {
                        return angular.copy(vm.allOrders);
                    },
                    order: () => {
                        return angular.copy(entity);
                    },
                    isEditable: () => {
                        return vm.isAdmin;
                    },
                }
            });

            return dialog.result;
        };

        vm.deleteOrder = (order) => {
            $pleasewait.show();
            orderFactory.delete(order.id).then(() => {
                var index = vm.allOrders.indexOf(vm.allOrders.find(s => s.id == order.id));
                vm.allOrders.splice(index, 1);

                var selectedIndex = vm.search.orders.indexOf(vm.search.orders.find(s => s.id == order.id));
                if (selectedIndex > 0) {
                    vm.search.orders.splice(selectedIndex, 1);
                }
                $pleasewait.hide();
            });
        };

        vm.configMultiselect = () => {

            vm.config = {}
            vm.config.multiselectTranslation = {
                checkAll: 'Выбрать все',
                uncheckAll: 'Сбросить',
                buttonDefaultText: 'Выбрать',
                selectionCount: 'выбрано',
                searchPlaceholder: 'Искать...',
                dynamicButtonTextSuffix: 'выбрано',
            };

            vm.config.speciesTypesMultiselectSettings = {
                scrollableHeight: '200px',
            };
            vm.config.multiselectSettings = {
                width: '300px',
                scrollableHeight: '300px',
                scrollable: true,
                enableSearch: true
            };
        };
    },
});