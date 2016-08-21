/* global angular */


(function() {
  angular.module("app").controller("PagesController", ["$scope", "$http", "$q", function($scope, $http, $q) {

    $scope.test = () => {
      console.log('helo');
    }
  }]);
})();
