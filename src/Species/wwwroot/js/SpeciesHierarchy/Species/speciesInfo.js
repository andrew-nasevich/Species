speciesHierarchy.component('speciesInfo', {
    bindings: {
        allSpeciesTypes: '=',
        allClasses: '=',
        allOrders: '=',
        allSpecies: '=',
        species: '=',
        $close: '&',
        $dismiss: '&'
    },
    templateUrl: '/templates/SpeciesHierarchy/Species/speciesInfo.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($rootScope) {
        const vm = this;

        vm.$onInit = () => {
            vm.file = {};
            vm.isNew = vm.species.id == 0;

            vm.selectedOrder = vm.isNew ? [] : [vm.allOrders.find(o => o.id == vm.species.orderId)];
            vm.selectedClass = vm.isNew ? [] : [vm.allClasses.find(c => c.id == vm.selectedOrder[0].classId)];
            vm.selectedSpeciesType = vm.isNew ? [] : [vm.allSpeciesTypes.find(t => t.id == vm.selectedClass[0].speciesTypeId)];

            vm.orders = vm.isNew ? [] : [...vm.allOrders.filter(o => o.classId == vm.selectedClass[0].id)];
            vm.classes = vm.isNew ? [] : [...vm.allClasses.filter(c => c.speciesTypeId == vm.selectedSpeciesType[0].id)];
            vm.speciesTypes = vm.allSpeciesTypes;

            vm.configMultiselect();
        };

        vm.close = () => {
            vm.$dismiss({
                result: {
                    reason: 'cancel',
                }
            });
        };

        vm.delete = () => {
            vm.$dismiss({
                result: {
                    reason: 'delete',
                    entity: vm.species
                }
            });
        };

        vm.save = () => {

            if (!vm.selectedOrder[0]) {
                alert('Пожалуйста, выберите тип, класс и отряд для данного вида.');
                return;
            }

            if (!vm.species.russianName) {
                alert('Пожалуйста, заполните поле вида.');
                return;
            }

            if (!vm.species.imageFileName) {
                alert('Пожалуйста, укажите изображение вида.');
                return;
            }

            if (!vm.species.category || vm.species.category > 4 || vm.species.category < 1) {
                alert('Пожалуйста, укажите категорию в диапазоне [1..4].');
                return;
            }


            vm.species.orderId = vm.selectedOrder[0].id;
            vm.$close({
                result: {
                    species: vm.species,
                    imageFile: vm.species.imageFile
                }
            });
        };

        vm.onSelectedSpeciesTypeChange = () => {
            vm.classes = vm.allClasses.filter(c => vm.selectedSpeciesType.some(st => st.id == c.speciesTypeId));
            vm.selectedClass = [...vm.classes.filter(c => vm.selectedClass.some(sc => sc.id == c.id))];
            
            vm.onSelectedClassChange();
        };

        vm.onSelectedClassChange = () => {
            vm.orders = vm.allOrders.filter(o => vm.selectedClass.some(c => c.id == o.classId));
            vm.selectedOrder = vm.orders.length == 1 ? [...vm.orders] : [...vm.orders.filter(o => vm.selectedOrder.some(so => so.id == o.id))];
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

            vm.config.multiselectSettings = {
                scrollableHeight: '200px',
                selectionLimit: 1,
                smartButtonTextConverter: (itemText, originalItem) => itemText,
                smartButtonMaxItems: 1
            };
        };
    }
});

speciesHierarchy.directive('imageModel', ['$parse', function ($parse) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {
            var model = $parse(attrs.imageModel);
            var modelSetter = model.assign;

            var nameSetter = $parse(attrs.imageFileName).assign;

            element.bind('change', function () {
                scope.$apply(function () {
                    var file = element[0].files[0];
                    modelSetter(scope, file);
                    nameSetter(scope, file.name);
                });
            });
        }
    };
}]);