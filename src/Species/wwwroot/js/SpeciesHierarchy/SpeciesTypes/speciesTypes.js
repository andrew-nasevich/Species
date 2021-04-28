'use strict'

speciesHierarchy.component('speciesTypes', {
    templateUrl: '/templates/SpeciesHierarchy/SpeciesTypes/SpeciesTypes.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($q, $cookies, $uibModal, speciesTypeFactory, accountFactory, $pleasewait,) {
        $pleasewait.show();
        let vm = this;

        vm.search = {};

        vm.rawSpeciesType = {
            id: 0,
            description: '',
        };

        vm.$onInit = () => {

            var id = $cookies.getObject('userId');

            var promises = {
                account: accountFactory.getById(id),
                speciesTypes: speciesTypeFactory.get()
            };

            $q.all(promises).then(data => {
                vm.account = data.account;
                vm.isAdmin = !!vm.account.roles.find(r => r == 'Admin');

                vm.search.speciesTypes = angular.copy(data.speciesTypes.map(o => { return { name: o.name, ...o } }));

                $pleasewait.hide();
            });

            vm.configMultiselect();
        };

        vm.onOpenInfo = (entity) => {
            var result = vm.openSpeciesTypeInfo(angular.copy(entity), false);

            result.then((result) => {
                $pleasewait.show();
                var index = vm.search.speciesTypes.indexOf(vm.search.speciesTypes.find(c => c.id == result.id));
                if (index >= 0) {
                    speciesTypeFactory.update(result).then(() => {
                        vm.search.speciesTypes[index] = angular.copy(result);
                        $pleasewait.hide();
                    });
                }
            }, (result) => {
                if (result.reason == 'delete') {
                    vm.deleteSpeciesType(result.entity);
                }
            });
        };

        vm.addNew = () => {
            var speciesType = angular.copy(vm.rawSpeciesType);
            var result = vm.openSpeciesTypeInfo(speciesType, true);

            result.then((speciesType) => {
                $pleasewait.show();
                speciesTypeFactory.create(speciesType).then((speciesType) => {
                    speciesType = {
                        ...speciesType
                    };

                    vm.search.speciesTypes.push(speciesType);
                    $pleasewait.hide();
                });
            });
        };

        vm.openSpeciesTypeInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'bg',
                template: `<species-type-info 
                            species-type="$ctrl.speciesType"                            
                            is-editable="$ctrl.isEditable"
                            $close=$close(result)
                            $dismiss="$dismiss(result)"/>`,
                controllerAs: '$ctrl',
                controller: ['speciesType', 'isEditable',
                    function (speciesType, isEditable) {
                        const $ctrl = this;
                        $ctrl.speciesType = speciesType;
                        $ctrl.isEditable = isEditable;
                    }],
                resolve: {
                    speciesType: () => {
                        return angular.copy(entity);
                    },
                    isEditable: () => {
                        return vm.isAdmin;
                    },
                }
            });

            return dialog.result;
        };

        vm.deleteSpeciesType = (speciesType) => {
            $pleasewait.show();
            speciesTypeFactory.delete(speciesType.id).then(() => {
                var index = vm.search.speciesTypes.indexOf(vm.search.speciesTypes.find(c => c.id == speciesType.id));
                vm.search.speciesTypes.splice(index, 1);

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