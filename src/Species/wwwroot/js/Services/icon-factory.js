'use strict'

var iconFactoryModule = angular.module('iconFactoryModule', []);

iconFactoryModule.factory('iconFactory', function () {

    var size = {
        iconSize: [25, 41],
        shadowSize: [41, 41],
        iconAnchor: [12, 40],
        shadowAnchor: [12, 40],
        tooltipAnchor: [15, -26]
    };
  
    var redIcon = L.icon({
        iconUrl: '/images/markers/red-marker.png',
        shadowUrl: '/images/markers/marker-shadow.png',

        ...size
    });
    var orangeIcon = L.icon({
        iconUrl: '/images/markers/orange-marker.png',
        shadowUrl: '/images/markers/marker-shadow.png',

        ...size
    });
    var yellowIcon = L.icon({
        iconUrl: '/images/markers/yellow-marker.png',
        shadowUrl: '/images/markers/marker-shadow.png',

        ...size
    });
    var greenIcon = L.icon({
        iconUrl: '/images/markers/green-marker.png',
        shadowUrl: '/images/markers/marker-shadow.png',

        ...size
    });

    return {
        getMarkerIcon: function (category) {
            switch (category){
                case 1:
                    return redIcon;
                case 2:
                    return orangeIcon;
                case 3:
                    return yellowIcon;
                    break;
                default:
                    return greenIcon;
            }
        }
    }
});