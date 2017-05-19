'use strict';
angular.module('app')
    //Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URLPREFIX', 'ArticlesService','PagerService', function ($scope, $http, $log, $state, URLPREFIX, ArticlesService,PagerService) {


        $scope.articles = [];
        $scope.pager = {};

        $scope.setPage = function(page) {
            if (page < 1 || page > $scope.pager.totalPages) {
                return;
            }
            ArticlesService.getArticles(URLPREFIX.url + URLPREFIX.articleURL+'/?page='+page)
                .then(function (res) {
                    $scope.articles = res.data.result;
                    $scope.totalItems = res.data.length;
                    $scope.pager = PagerService.getPager(res.data.length, page,5);
                    $scope.items = $scope.articles.slice($scope.pager.startIndex, $scope.pager.endIndex + 1);
                    $log.debug($scope.articles);
                }, function (err) {
                    $log.debug(err);
                });

        }

        $scope.setPage(1);

        $scope.search = function (searchKeyword) {
            ArticlesService.getArticles(URLPREFIX.url + URLPREFIX.articleURL+'/?search='+searchKeyword)
                .then(function (res) {
                    $scope.articles = res.data;
                    $log.debug($scope.articles);
                }, function (err) {
                    $log.debug(err);
                });
        }
        $scope.delete = function (id) {
            ArticlesService.deleteArticle(URLPREFIX.url + URLPREFIX.articleURL+'/'+id)
                .then(function (res) {
                    $log.debug(res);
                    $state.reload();
                }, function (err) {
                    $log.debug(err);
                });
        }

        $scope.goToEditArticles = function (currentId) {
            $state.go('articles.edit', {id: currentId});
        };
    }])

    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', 'URLPREFIX', 'ArticlesService', function ($scope, $http, $state, $log, URLPREFIX, ArticlesService) {
        $scope.submit = function () {
            var data = {
                title: $scope.title,
                content: $scope.content
            };
            ArticlesService.postArticle(URLPREFIX.url + URLPREFIX.articleURL, data)
                .then(function (res) {
                    $log.debug(res);
                    $state.go('articles.index');
                }, function (err) {
                    $log.debug(err);
                });
        }
    }])

    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$state', '$log', '$stateParams', 'URLPREFIX', 'ArticlesService', function ($scope, $http, $state, $log, $stateParams, URLPREFIX, ArticlesService) {
        var id = $stateParams.id;

        ArticlesService.getArticle(URLPREFIX.url + URLPREFIX.articleURL, id)
            .then(function (res) {
                var article = res.data[0];
                $scope.data = {
                    id: id,
                    title: article.title,
                    content: article.content
                };
                $log.debug(article);
            }, function (err) {
                $log.debug(err);
            });
        $scope.submit = function () {
            ArticlesService.putArticle(URLPREFIX.url + URLPREFIX.articleURL, $scope.data)
                .then(function (res) {
                    $log.debug(res);
                    $state.go('articles.index');
                }, function (err) {
                    $log.debug(err);
                });
        }
    }])
