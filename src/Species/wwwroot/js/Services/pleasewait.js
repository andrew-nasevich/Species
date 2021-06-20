var pleasewait = angular.module('pleasewait', ['ui.bootstrap']);

pleasewait.factory('$pleasewait', [
        '$rootScope', '$uibModal', '$timeout', function ($rootScope, $uibModal, $timeout) {
            $rootScope.pleaseWaitData = {};
            return {
                show: function (name, message, title) {
                    if (!name) name = 'cfPleaseWait';
                    if (!$rootScope.pleaseWaitData[name]) {
                        var titleHtml = typeof title === 'undefined' ? '' : '<div id="floatingTitle">' + title + '</div>';
                        var messageHtml = typeof message === 'undefined' ? '' : '<div id="floatingMessage">' + message + '</div>';
                        var dialog = $uibModal.open({
                            template: titleHtml + '<div id="floatingCirclesG"><div class="f_circleG" id="frotateG_01"></div><div class="f_circleG" id="frotateG_02"></div><div class="f_circleG" id="frotateG_03"></div><div class="f_circleG" id="frotateG_04"></div><div class="f_circleG" id="frotateG_05"></div><div class="f_circleG" id="frotateG_06"></div><div class="f_circleG" id="frotateG_07"></div><div class="f_circleG" id="frotateG_08"></div></div>' + messageHtml,
                            backdrop: 'static',
                            keyboard: false,
                            windowClass: 'cfPleaseWait'
                        });
                        $rootScope.pleaseWaitData[name] = dialog;
                    }
                },
                hide: function (name) {
                    if (!name)
                        name = 'cfPleaseWait';
                    if ($rootScope.pleaseWaitData[name]) {
                        $timeout(function() {
                            if (!$rootScope.pleaseWaitData[name]) return;
                            $rootScope.pleaseWaitData[name].close(false);
                            delete $rootScope.pleaseWaitData[name];
                        });
                    }
                }
            };
        }]);