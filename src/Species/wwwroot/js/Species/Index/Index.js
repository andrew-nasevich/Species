'use strict'

var speciesIndex = angular.module('speciesIndex', [
    'angularjs-dropdown-multiselect',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'accountFactoryModule',
    'ngCookies',
    'ui.bootstrap',
    'pleasewait',
]);

speciesIndex.controller('speciesIndexController',
    function speciesIndexController($q, $cookies, speciesFactory, speciesTypeFactory, accountFactory, $pleasewait, $uibModal) {
        $pleasewait.show();
        let vm = this;

        vm.search = {};

        vm.rawSpecies = {
            image: 'default.jfif',
            category: 1,
            description: ''
        };

        vm.$onInit = () => {

            var id = $cookies.getObject('userId');
            accountFactory.getById(id).then((r) => {
                vm.account = r;
                vm.isAdmin = !!vm.account.roles.find(r => r == 'Admin');
            });

            var speciesPromise = $q.defer();
            speciesFactory.get().then(result => {
                vm.allSpecies = angular.copy(result.map(o => { return { convertedCategory: vm.convertCategory(o.category), ...o } }));
                vm.search.species = angular.copy(vm.allSpecies);

                speciesPromise.resolve();
            });

            var speciesTypesPromise = $q.defer();
            speciesTypeFactory.get().then(result => {
                vm.allSpeciesTypes = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                vm.search.speciesTypes = angular.copy(vm.allSpeciesTypes);
                vm.search.selectedSpeciesTypes = [...vm.search.speciesTypes];

                speciesTypesPromise.resolve();
            });

            Promise.all([speciesTypesPromise.promise, speciesPromise.promise]).then(() => {
                $pleasewait.hide();
            });

            vm.configMultiselect();
        };

        vm.onSpeciesTypesChage = () => {
            vm.search.species = vm.allSpecies.filter(s => vm.search.selectedSpeciesTypes.some(st => st.id == s.speciesTypeId));
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
                        vm.search.species = angular.copy(vm.allSpecies);
                        vm.search.selectedSpeciesTypes = [...vm.search.speciesTypes];

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

                    if (vm.search.speciesTypes.some(t => t.id == species.speciesTypeId)) {
                        vm.search.species.push(species);
                    }

                    vm.allSpecies.push(species);
                    $pleasewait.hide();
                });
            });
        };

        vm.openSpeciesInfo = (entity, isNew) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'lg',
                template: `<species-info 
                            species="$ctrl.species"
                            all-species="$ctrl.allSpecies"
                            species-types="$ctrl.speciesTypes"
                            is-admin="$ctrl.isAdmin"
                            is-new="$ctrl.isNew"
                            $close=$close(species)
                            $dismiss="$dismiss(result)"/>`,
                controllerAs: '$ctrl',
                controller: ['species', 'allSpecies', 'isAdmin', 'isNew', 'speciesTypes',
                    function (species, allSpecies, isAdmin, isNew, speciesTypes) {
                        const $ctrl = this;
                        $ctrl.species = species;
                        $ctrl.allSpecies = allSpecies;
                        $ctrl.isAdmin = isAdmin;
                        $ctrl.isNew = isNew;
                        $ctrl.speciesTypes = speciesTypes;
                }],
                resolve: {
                    species: () => {
                        return angular.copy(entity);
                    },
                    allSpecies: () => {
                        return vm.allSpecies;
                    },
                    isAdmin: () => {
                        return vm.isAdmin;
                    },
                    isNew: () => {
                        return isNew;
                    },
                    speciesTypes: () => {
                        return vm.allSpeciesTypes;
                    }
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
                case 5:
                    return 'V';
            }
        };
    }
);