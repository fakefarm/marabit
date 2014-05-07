var myApp = angular.module('myApp', []);

myApp.controller('RaceCtrl', function($scope){
  $scope.races = [
    {
     id: 1,
     title: 'run 500 miles',
     position: '1st',
     count: '328 mi.'
    },
    {
     id: 2,
     title: '300 situps',
     position: '3rd',
     count: '72 situps'
    },
    {
     id: 3,
     title: 'skip 100 deserts',
     position: '1st',
     count: '74 skipped'
    }
  ];

  $scope.firstRace = $scope.races[1];
});
