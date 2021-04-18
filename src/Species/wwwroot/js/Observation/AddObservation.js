'use strict'

var addObservationModule = angular.module('addObservation', [
    'angularjs-dropdown-multiselect',
    'observationFactoryModule',
    'speciesFactoryModule',
    'speciesTypeFactoryModule',
    'mapHelper',
    'ngCookies'
]);

addObservationModule.controller('addObservationController',
    function addObservationController($q, $cookies, observationFactory, speciesFactory, speciesTypeFactory, mapHelper) {
        let self = this;

        self.observation = {};

        self.$onInit = () => {

            var speciesPromise = $q.defer();
            speciesFactory.get().then(result => {
                self.allSpecies = angular.copy(result.map(o => { return { label: o.russianName + ' - ' + self.convertCategory(o.category), ...o } }));
                self.observation.species = angular.copy(self.allSpecies);
                self.observation.selectedSpecies = [];

                speciesPromise.resolve();
            });

            var speciesTypesPromise = $q.defer();
            speciesTypeFactory.get().then(result => {
                self.allSpeciesTypes = angular.copy(result.map(o => { return { label: o.type, ...o } }));
                self.observation.speciesTypes = angular.copy(self.allSpeciesTypes);
                self.observation.selectedSpeciesTypes = [...self.observation.speciesTypes];

                speciesTypesPromise.resolve();
            });

            var today = new Date();
            self.today = today.toISOString().substring(0, 10);
            self.observation.date = today;

            self.observation.description = '';

            mapHelper.init();
            mapHelper.registerOnClick(self.onMapClick);

            self.configMultiselect();
        };

        self.onSpeciesTypesChage = () => {
            var species = self.allSpecies.filter(s => self.observation.selectedSpeciesTypes.some(st => st.id == s.speciesType.id));
            self.observation.species = species;
            self.observation.selectedSpecies = [...species.filter(ss => self.observation.selectedSpecies.some(s => s.id == ss.id))];
        };

        self.onMapClick = (params) => {
            if (!self.observation.markerIsSet) {
                mapHelper.addMarker(params.latlng.lat, params.latlng.lng, undefined, 1, { draggable: true });
                self.observation.markerIsSet = true;
            } else {
                mapHelper.setMarkerlatlng(1, params.latlng.lat, params.latlng.lng);
            }

            if (self.observation.selectedSpecies.length > 0) {
                mapHelper.setMarkerTooltipText(1, self.observation.selectedSpecies[0].label);
            }
        };

        self.onAddObservation = () => {
            var species = self.observation.selectedSpecies[0];
            var latLng = mapHelper.getMarkerlatlng(1);

            var errorText = '';
            if (!species) {
                errorText += 'Пожалуйста, выберете вид для добавления.';
            }
            if (!latLng) {
                errorText += 'Пожалуйста, выберете место наблюдения.'
            }

            if (errorText) {
                alert(errorText);
                return;
            }

            observationFactory.add(latLng.lat, latLng.lng, self.observation.description, self.observation.date,  species.id)
                .then(r => {
                    alert(species.label + ' был добавлен.');
                });
        }

        self.onSelectedSpeciesChange = () => {
            if (!self.observation.markerIsSet) {
                return
            }
            if (self.observation.selectedSpecies.length > 0) {
                mapHelper.setMarkerTooltipText(1, self.observation.selectedSpecies[0].label);
            } else {
                mapHelper.closeMakersToolTip(1);
            }      
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
            self.config.speciesMultiselectSettings = {
                scrollableHeight: '300px',
                scrollable: true,
                enableSearch: true,
                selectionLimit: 1
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