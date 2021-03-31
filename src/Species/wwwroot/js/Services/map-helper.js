'use strict'

var mapHelper = angular.module('mapHelper', []);

mapHelper.factory('mapHelper', function ($http, $window, $q) {

    var mymap = L.map('mapid').setView([53.505, 28.09], 7);

    return {

        init: function () {
            L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
                attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                maxZoom: 18,
                id: 'mapbox/streets-v11',
                tileSize: 512,
                zoomOffset: -1,
                accessToken: 'pk.eyJ1IjoiYW5kcmV5LW5hc2V2aWNoIiwiYSI6ImNrbXBiMHh6ZzBueXEycHJ2aXZ5OHZ6djEifQ.oCdeXW1UQIiLdZPOtQFcwA'
            }).addTo(mymap);
        },
        registerOnClick: function (func) {
            mymap.on('click', func);
        }
    }
});