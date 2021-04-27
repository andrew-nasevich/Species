'use strict'

speciesHierarchy.component('classes', {
    templateUrl: '/templates/SpeciesHierarchy/Classes/classes.html?v=' + new Date().getTime(),
    controllerAs: 'vm',
    controller($q, $cookies, $uibModal, speciesTypeFactory, classFactory, accountFactory, $pleasewait, ) {
        $pleasewait.show();
        let vm = this;

        vm.search = {};

        vm.rawClass = {
            id: 0,
            latinName: ''
        };

        vm.$onInit = () => {

            var id = $cookies.getObject('userId');

            var promises = {
                account: accountFactory.getById(id),
                speciesTypes: speciesTypeFactory.get(),
                classes: classFactory.get(),
            };

            $q.all(promises).then(data => {
                vm.account = data.account;
                vm.isAdmin = !!vm.account.roles.find(r => r == 'Admin');

                vm.allSpeciesTypes = angular.copy(data.speciesTypes.map(o => { return { label: o.type, ...o } }));
                vm.search.speciesTypes = angular.copy(vm.allSpeciesTypes);
                vm.search.selectedSpeciesTypes = [...vm.search.speciesTypes];

                vm.allClasses = angular.copy(data.classes.map(c => { return { label: c.name, ...c } }));
                vm.allClasses.forEach(c => {
                    c.type = vm.allSpeciesTypes.find(t => t.id == c.speciesTypeId);
                });
                vm.search.classes = angular.copy(vm.allClasses);

                $pleasewait.hide();
            });

            vm.configMultiselect();
        };

        vm.onSelectedSpeciesTypesChange = () => {
            vm.search.classes = vm.allClasses.filter(c => vm.search.selectedSpeciesTypes.some(st => st.id == c.speciesTypeId));
        };

        vm.onOpenInfo = (entity) => {
            var result = vm.openClassInfo(angular.copy(entity), false);

            result.then((result) => {
                $pleasewait.show();
                var index = vm.allClasses.indexOf(vm.allClasses.find(c => c.id == result.id));
                if (index >= 0) {
                    classFactory.update(result).then(() => {
                        vm.allClasses[index] = angular.copy(result);

                        var resultIndex = vm.search.classes.indexOf(vm.search.classes.find(s => s.id == result.id));
                        vm.search.classes[resultIndex] = result;

                        $pleasewait.hide();
                    });
                }
            }, (result) => {
                if (result.reason == 'delete') {
                    vm.deleteClass(result.entity);
                }
            });
        };

        vm.addNew = () => {
            var newClass = angular.copy(vm.rawClass);
            var result = vm.openClassInfo(newClass, true);

            result.then((newClass) => {
                $pleasewait.show();
                classFactory.create(newClass).then((newClass) => {
                    newClass = {
                        ...newClass,
                        type: vm.allSpeciesTypes.find(t => t.id == newClass.speciesTypeId),
                    };

                    if (vm.search.selectedSpeciesTypes.some(st => st.id == newClass.speciesTypeId)) {
                        vm.search.classes.push(newClass);
                    }

                    vm.allClasses.push(newClass);
                    $pleasewait.hide();
                });
            });
        };

        vm.openClassInfo = (entity) => {

            const dialog = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                keyboard: false,
                size: 'bg',
                template: `<class-info 
                            all-species-types="$ctrl.allSpeciesTypes"                            
                            all-classes="$ctrl.allClasses"
                            class="$ctrl.classParam"                            
                            is-editable="$ctrl.isEditable"
                            $close=$close(result)
                            $dismiss="$dismiss(result)"/>`,
                controllerAs: '$ctrl',
                controller: ['allSpeciesTypes', 'allClasses', 'classParam', 'isEditable',
                    function (allSpeciesTypes, allClasses, classParam, isEditable) {
                        const $ctrl = this;
                        $ctrl.allSpeciesTypes = allSpeciesTypes;
                        $ctrl.allClasses = allClasses;
                        $ctrl.classParam = classParam;
                        $ctrl.isEditable = isEditable;
                    }],
                resolve: {
                    allSpeciesTypes: () => {
                        return angular.copy(vm.allSpeciesTypes);
                    },
                    allClasses: () => {
                        return angular.copy(vm.allClasses);
                    },
                    classParam: () => {
                        return angular.copy(entity);
                    },
                    isEditable: () => {
                        return vm.isAdmin;
                    },
                }
            });

            return dialog.result;
        };

        vm.deleteClass = (classParam) => {
            $pleasewait.show();
            classFactory.delete(classParam.id).then(() => {
                var index = vm.allClasses.indexOf(vm.allClasses.find(c => c.id == classParam.id));
                vm.allClasses.splice(index, 1);

                var selectedIndex = vm.search.classes.indexOf(vm.search.classes.find(s => s.id == classParam.id));
                if (selectedIndex > 0) {
                    vm.search.classes.splice(selectedIndex, 1);
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