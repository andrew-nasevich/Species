'use strict'

var speciesIndex = angular.module('speciesIndex', [
    'angularjs-dropdown-multiselect',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'ngCookies',
    'ui.bootstrap',
    'pleasewait'
]);

speciesIndex.component('speciesInfo', {
    bindings: {
        species: '=',
        allSpecies: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/Species/info.html',
    controllerAs: 'vm',
    controller() {
        const vm = this;
        vm.close = () =>{
            vm.$dismiss({
                reason: 'cancel',
            });
        };

        vm.save = () => {
            vm.$close({
                species: vm.species,
            });
        };
    }
});

speciesIndex.controller('speciesIndexController',
    function speciesIndexController($q, $cookies, speciesFactory, speciesTypeFactory, $pleasewait, $uibModal) {
        $pleasewait.show();
        let self = this;

        self.search = {};

        self.$onInit = () => {

            var speciesPromise = $q.defer();
            speciesFactory.get().then(result => {
                self.allSpecies = angular.copy(result.map(o => { return { convertedCategory: self.convertCategory(o.category), ...o } }));
                self.search.species = angular.copy(self.allSpecies);

                speciesPromise.resolve();
            });

            var speciesTypesPromise = $q.defer();
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                self.search.speciesTypes = angular.copy(self.allSpeciesTypes);
                self.search.selectedSpeciesTypes = [...self.search.speciesTypes];

                speciesTypesPromise.resolve();
            });

            Promise.all([speciesTypesPromise.promise, speciesPromise.promise]).then(() => {
                $pleasewait.hide();
            });

            self.configMultiselect();
        };

        self.onSpeciesTypesChage = () => {
            self.search.species = self.allSpecies.filter(s => self.search.selectedSpeciesTypes.some(st => st.id == s.speciesType.id));
        };

        self.onOpenInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'lg',
                template: `<species-info 
                            species="$ctrl.species"
                            all-species="$ctrl.allSpecies"
                            $close=$close(species)
                            $dismiss="$dismiss(reason)"/>`,
                controllerAs: '$ctrl',
                controller: ['species', 'allSpecies', function (species, allSpecies) {
                    const $ctrl = this;
                    $ctrl.species = species;
                    $ctrl.allSpecies = allSpecies;
                }],
                resolve: {
                    species: () => {
                        return angular.copy(entity);
                    },
                    allSpecies: () => {
                        return self.allSpecies;
                    }
                }
            });

            dialog.result.then((species) => {
                $pleasewait.show();
                var index = self.allSpecies.indexOf(self.allSpecies.find(s => s.id == species.id));
                if (index >= 0) {
                    speciesFactory.update(species).then(() => {
                        species.convertedCategory = self.convertCategory(species.category)
                        self.allSpecies[index] = angular.copy(species);
                        self.search.species = angular.copy(self.allSpecies);
                        self.search.selectedSpeciesTypes = [...self.search.speciesTypes];

                        $pleasewait.hide();
                    });
                }
            });
        };

        self.configMultiselect = () => {

            self.config = {}
            self.config.multiselectTranslation = {
                checkAll: 'Выбрать все',
                uncheckAll: 'Сбросить',
                buttonDefaultText: 'Выбрать',
                selectionCount: 'выбрано',
                searchPlaceholder: 'Искать...',
                dynamicButtonTextSuffix: 'выбрано',
            };

            self.config.speciesTypesMultiselectSettings = {
                scrollableHeight: '200px',
            };
            self.config.multiselectSettings = {
                scrollableHeight: '300px',
                scrollable: true,
                enableSearch: true
            };
        };

        self.convertCategory = (category) => {
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