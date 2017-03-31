'use strict';
angular.module('app')

//Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$state', 'URLPREFIX', 'ArticlesService', function ($scope, $http, $state, URLPREFIX, ArticlesService) {
        $scope.articles = [];
        ArticlesService.getArticles(URLPREFIX.url + URLPREFIX.articleURL)
            .then(function (res) {
                $scope.articles = res.data;
                console.log($scope.articles);
            }, function (err) {
                console.log(err);
            });
        $scope.goTo = function (currentId) {
            $state.go('articles.edit', {id: currentId});
        };
    }])

    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', 'URLPREFIX', 'ArticlesService', function ($scope, $http, URLPREFIX, ArticlesService) {
        $scope.submit = function () {
            var data = {
                title: $scope.title,
                content: $scope.content
            };
            ArticlesService.postArticle(URLPREFIX.url + URLPREFIX.articleURL, data)
                .then(function (res) {
                    console.log(res);
                }, function (err) {
                    console.log(err);
                });
        }
    }])

    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$stateParams', 'URLPREFIX', 'ArticlesService', function ($scope, $http, $stateParams, URLPREFIX, ArticlesService) {
        var id = $stateParams.id;

            ArticlesService.getArticle(URLPREFIX.url + URLPREFIX.articleURL, id)
                .then(function (res) {
                    var article = res.data[0];
                    $scope.data = {
                        title: article.title,
                        content: article.content
                    };
                    console.log(article);
                }, function (err) {
                    console.log(err);
                });
        $scope.submit = function () {
            $scope.updateArticle = function () {
                ArticlesService.postArticle(URLPREFIX.url + URLPREFIX.articleURL, data)
                    .then(function (res) {
                        console.log(res);
                    }, function (err) {
                        console.log(err);
                    });
            }
        }
    }])