<!DOCTYPE html>
<html>
    <head>
        <title>AJAX with Servlets using AngularJS</title>
        <script type="text/javascript" src="js/angular.min.js"></script>
        <script>
            var app = angular.module('myApp', []);

            app.controller("MyController",function MyController($scope, $http) {
                
                //$scope.firstname="John";
               // $scope.lastname="Doe";
                $scope.getDataFromServer = function () {
                    $http({
                        method: 'GET',
                        url: 'AngularJsServlet'
                    }).success(function (data, status, headers, config) {
                        $scope.person = data;
                    }).error(function (data, status, headers, config) {
                        // called asynchronously if an error occurs
                        // or server returns response with an error status.
                    });

                };
            });
        </script>
    </head>
    <body>
        <div ng-app="myApp">
            <div ng-controller="MyController">
                <button ng-click="getDataFromServer()">Fetch data from server</button>
                <p>First Name : {{person.firstName}}</p>
                <p>Last Name : {{person.lastName}}</p>
            </div>
        </div>
    </body>
</html>