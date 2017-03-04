'use strict';
angular.module('app')

//Home Controller
    .controller('HomeController', function ($scope, $http, URLPREFIX, NewsService) {
        $scope.submit = function(){
            var formData = {title: $scope.title};
            NewsService.postArticle(URLPREFIX.url+URLPREFIX.articleURL, formData)
                .then(function(x){
                    console.log(x);
                }, function(err){
                    console.log(err);
                });
        }


    })