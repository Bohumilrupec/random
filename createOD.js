
    var app = angular.module("app", []); 

    //Definition of this controller
    app.controller("odCtrl", function($scope, $http, $q) {

        $scope.items = [];
        $scope.selected = $scope.items[0];
        $scope.loading = true;

        function getLists() {
            var dfd = $q.defer();

            $pnp.sp.web.lists.get().then(function (data) {
                if(data) {
                    console.log(data);
                    $scope.items = data;
                    dfd.resolve();
                }
            });

            return dfd.promise;
        }

        getLists().then(function() {
            $scope.loading = false;
            $scope.siteId = encodeURIComponent(_spPageContextInfo.siteId);
            $scope.webId = encodeURIComponent(_spPageContextInfo.webId);
            $scope.email = _spPageContextInfo.userLoginName;
            $scope.webUrl = encodeURIComponent(_spPageContextInfo.webAbsoluteUrl);
        })

        $scope.update = function() {
            $scope.listId = $scope.selected.Id;
        }
    });
