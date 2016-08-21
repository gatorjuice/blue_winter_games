/* global angular */


(function() {
  angular.module("app").controller("NewContactController", ["$scope", "$http", "$q", function($scope, $http, $q) {

    $scope.test = () => {
      console.log('helo');
    }
  }]);
})();
