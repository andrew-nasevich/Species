'use strict'

var iconFactoryModule = angular.module('iconFactoryModule', []);

iconFactoryModule.factory('iconFactory', function () {

    var size = {
        iconSize: [25, 41], // size of the icon
        shadowSize: [41, 41], // size of the shadow
        iconAnchor: [12, 40], // point of the icon which will correspond to marker's location
        shadowAnchor: [12, 40],  // the same for the shadow
        tooltipAnchor: [15, -26]// point from which the popup should open relative to the iconAnchor
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