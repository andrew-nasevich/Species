'use strict'

var speciesIndex = angular.module('speciesIndex', [
    'angularjs-dropdown-multiselect',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'ngCookies'
]);

speciesIndex.controller('speciesIndexController',
    function speciesIndexController($q, $cookies, speciesFactory, speciesTypeFactory) {
        let self = this;

        self.search = {};

        self.$onInit = () => {

            var speciesPromise = $q.defer();
            speciesFactory.get().then(result => {
                self.allSpecies = angular.copy(result.map(o => { return { label: o.russianName, convertedCategory: self.convertCategory(o.category), ...o } }));
                self.search.species = angular.copy(self.allSpecies);

                self.search.categories = self.allSpecies
                    .map(s => s.category)
                    .filter((value, index, self) => {
                        return self.indexOf(value) === index;
                    })
                    .sort()
                    .map(s => {
                        return {
                            label: self.convertCategory(s),
                            category: s
                        };
                    });

                speciesPromise.resolve();
            });

            var speciesTypesPromise = $q.defer();
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                self.search.speciesTypes = angular.copy(self.allSpeciesTypes);
                self.search.selectedSpeciesTypes = [...self.search.speciesTypes];

                speciesTypesPromise.resolve();
            });

            self.configMultiselect();
        };

        self.onSpeciesTypesChage = () => {
            self.search.species = self.allSpecies.filter(s => self.search.selectedSpeciesTypes.some(st => st.id == s.speciesType.id));
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