'use strict'

var speciesIndex = angular.module('speciesIndex', [
    'angularjs-dropdown-multiselect',
    'speciesTypeFactoryModule',
    'classFactoryModule',
    'orderFactoryModule',
    'speciesFactoryModule',
    'accountFactoryModule',
    'ngCookies',
    'ui.bootstrap',
    'pleasewait',
]);

speciesIndex.controller('speciesIndexController',
    function speciesIndexController($q, $cookies, $uibModal, speciesTypeFactory, classFactory, orderFactory, speciesFactory, accountFactory, $pleasewait, ) {
        $pleasewait.show();
        let vm = this;

        vm.search = {};

        vm.rawSpecies = {
            id: 0,
            image: 'default.jfif',
            category: 1,
            description: ''
        };

        vm.$onInit = () => {

            var id = $cookies.getObject('userId');

            var promises = {
                account: accountFactory.getById(id),
                speciesTypes: speciesTypeFactory.get(),
                classes: classFactory.get(),
                orders: orderFactory.get(),
                species: speciesFactory.get(),
                
            };

            $q.all(promises).then(data => {
                vm.account = data.account;
                vm.isAdmin = !!vm.account.roles.find(r => r == 'Admin');

                vm.allSpeciesTypes = angular.copy(data.speciesTypes.map(o => { return { label: o.type, ...o } }));
                vm.search.speciesTypes = angular.copy(vm.allSpeciesTypes);
                vm.search.selectedSpeciesTypes = [...vm.search.speciesTypes];

                vm.allClasses = angular.copy(data.classes.map(c => { return { label: c.name, ...c } }));
                vm.search.classes = angular.copy(vm.allClasses);
                vm.search.selectedClasses = [...vm.search.classes];

                vm.allOrders = angular.copy(data.orders.map(o => { return { label: o.name, ...o } }));
                vm.search.orders = angular.copy(vm.allOrders);
                vm.search.selectedOrders = [...vm.search.orders];

                vm.allSpecies = angular.copy(data.species.map(o => { return { convertedCategory: vm.convertCategory(o.category), ...o } }));
                vm.search.species = angular.copy(vm.allSpecies);

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
            vm.search.selectedOrders = [...vm.search.orders.filter(o => vm.search.selectedOrders.some(so => so.id == o.id))];

            vm.onSelectedOrdersChange();
        };

        vm.onSelectedOrdersChange = () => {
            vm.search.species = vm.allSpecies.filter(s => vm.search.selectedOrders.some(o => o.id == s.orderId));
        };

        vm.onOpenInfo = (entity) => {
            var result = vm.openSpeciesInfo(angular.copy(entity), false);

            result.then((species) => {
                $pleasewait.show();
                var index = vm.allSpecies.indexOf(vm.allSpecies.find(s => s.id == species.id));
                if (index >= 0) {
                    speciesFactory.update(species).then(() => {
                        species.convertedCategory = vm.convertCategory(species.category)
                        vm.allSpecies[index] = angular.copy(species);

                        var speciesIndex = vm.search.species.indexOf(vm.search.species.find(s => s.id == species.id));
                        vm.search.species[speciesIndex] = species;

                        $pleasewait.hide();
                    });
                }
            }, (result) => {
                if (result.reason == 'delete') {
                    vm.deleteSpecies(result.entity);
                }
            });
        };

        vm.addNew = () => {
            var species = angular.copy(vm.rawSpecies);
            var result = vm.openSpeciesInfo(species, true);

            result.then((species) => {
                $pleasewait.show();
                speciesFactory.create(species).then((species) => {
                    species = { convertedCategory: vm.convertCategory(species.category), ...species };

                    if (vm.search.selectedOrders.some(o => o.id == species.orderId)) {
                        vm.search.species.push(species);
                    }

                    vm.allSpecies.push(species);
                    $pleasewait.hide();
                });
            });
        };

        vm.openSpeciesInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'lg',
                template: `<species-info 
                            all-species-types="$ctrl.allSpeciesTypes"                            
                            all-classes="$ctrl.allClasses"
                            all-orders="$ctrl.allOrders"
                            all-species="$ctrl.allSpecies"
                            species="$ctrl.species"                            
                            is-editable="$ctrl.isEditable"
                            $close=$close(species)
                            $dismiss="$dismiss(result)"/>`,
                controllerAs: '$ctrl',
                controller: ['allSpeciesTypes', 'allClasses', 'allOrders', 'allSpecies', 'species', 'isEditable',
                    function (allSpeciesTypes, allClasses, allOrders, allSpecies, species, isEditable) {
                        const $ctrl = this;
                        $ctrl.allSpeciesTypes = allSpeciesTypes;
                        $ctrl.allClasses = allClasses;
                        $ctrl.allOrders = allOrders;
                        $ctrl.allSpecies = allSpecies;
                        $ctrl.species = species;
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
                    allSpecies: () => {
                        return angular.copy(vm.allSpecies);
                    },
                    species: () => {
                        return angular.copy(entity);
                    },
                    isEditable: () => {
                        return vm.isAdmin;
                    },
                }
            });

            return dialog.result;
        };

        vm.deleteSpecies = (species) => {
            $pleasewait.show();
            speciesFactory.delete(species.id).then(() => {
                var index = vm.allSpecies.indexOf(vm.allSpecies.find(s => s.id == species.id));
                vm.allSpecies.splice(index, 1);

                var selectedIndex = vm.search.species.indexOf(vm.search.species.find(s => s.id == species.id));
                if (selectedIndex > 0) {
                    vm.search.species.splice(selectedIndex, 1);
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

        vm.convertCategory = (category) => {
            switch (category) {
                case 1:
                    return 'I';
                case 2:
                    return 'II';
                case 3:
                    return 'III';
                case 4:
                    return 'IV';
            }
        };
    }
);