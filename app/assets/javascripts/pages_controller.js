/* global angular */
/* global initMap */


(function() {
  "use strict";
  angular.module("app").controller("PagesController", ["$scope", "$http", "$q", function($scope, $http, $q) {

    $scope.test = () => {
      console.log('helo');
    }

    window.scope = $scope;
  }]);
})();
