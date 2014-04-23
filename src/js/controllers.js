var myApp = angular.module('myApp', []);

myApp.controller('RaceCtrl', function($scope){
  $scope.races = [
    {
     id: 1,
     title: 'run 500 miles',
     position: '1st'
    },
    {
     id: 2,
     title: '300 situps',
     position: '3rd'
    },
    {
     id: 3,
     title: 'skip 100 deserts',
     position: '1st'
    }
  ];

  $scope.firstRace = $scope.races[1];
});
