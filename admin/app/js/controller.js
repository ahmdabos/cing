'use strict';
angular.module('app')
//Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URLPREFIX', 'ArticlesService', 'PagerService', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, URLPREFIX, ArticlesService, PagerService, LoaderService, ToastService) {
        $scope.articles = [];
        $scope.pager = {};
        $scope.searchKeyword = '';
        $scope.limitOptions = [10, 25, 50, 100];
        $scope.fieldName = 'createdAt';
        $scope.reverse = true;
        $scope.setLimit = function (limit) {
            $scope.limit = limit;
            $scope.getArticls(1, $scope.limit, $scope.searchKeyword);
        };
        $scope.setSearch = function (searchKeyword) {
            $scope.searchKeyword = searchKeyword;
            $scope.getArticls(1, $scope.limit, $scope.searchKeyword);
        };
        $scope.setPage = function (page) {
            $scope.getArticls(page, $scope.limit, $scope.searchKeyword);
        };
        $scope.sortBy = function (fieldName) {
            $scope.reverse = ($scope.fieldName === fieldName) ? !$scope.reverse : false;
            $scope.fieldName = fieldName;
        };
        $scope.getArticls = function (page, limit, keyword) {
            if (!page) {
                page = 1;
            }
            if (!limit || limit == '') {
                limit = 25;
            }
            if (!keyword || keyword == '') {
                keyword == '';
            }
            LoaderService.show();
            ArticlesService.getArticles(URLPREFIX.url + URLPREFIX.articleURL + '/?page=' + page + '&search=' + keyword + '&limit=' + limit + '&offset=' + limit)
                .then(function (res) {
                    LoaderService.hide();
                    $scope.articles = res.data.result;
                    $scope.totalItems = res.data.length;
                    $scope.pager = PagerService.getPager(res.data.length, page, limit);
                    $scope.items = $scope.articles.slice($scope.pager.startIndex, $scope.pager.endIndex + 1);
                    $log.debug($scope.articles);
                }, function (err) {
                    LoaderService.hide();
                    $log.debug(err);
                });
            if (page < 1 || page > $scope.pager.totalPages) {
                return;
            }
        };
        $scope.getArticls(1, 25, '');
        $scope.deleteArticle = function (id) {
            ArticlesService.deleteArticle(URLPREFIX.url + URLPREFIX.articleURL + '/' + id)
                .then(function (res) {
                    LoaderService.hide();
                    ToastService.show('Deleted successfully');
                    $log.debug(res);
                    $state.reload();
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Something Went Wrong');
                    $log.debug(err);
                });
        };
        $scope.goToEditArticles = function (currentId) {
            $state.go('articles.edit', {id: currentId});
        };
    }])
    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URLPREFIX', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $filter, URLPREFIX, ArticlesService, LoaderService, ToastService, FileUploader) {
        $scope.date = $filter('date')(new Date(), 'yyyy-MM-dd hh:mm:ss');
        $scope.submit = function () {
            LoaderService.show();
            var data = {
                title: $scope.title,
                date: $scope.date,
                content: $scope.content
            };
            ArticlesService.postArticle(URLPREFIX.url + URLPREFIX.articleURL, data)
                .then(function (res) {
                    LoaderService.hide();
                    ToastService.show('Added successfully');
                    $log.debug(res);
                    $state.go('articles.index');
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Something Went Wrong');
                    $log.debug(err);
                });
        }
        var uploader = $scope.uploader = new FileUploader({
            url: URLPREFIX.url + 'apiupload'
        });

        uploader.onCompleteItem = function (fileItem, response, status, headers) {
            var response = JSON.parse(response);
            console.log(response.fileName);
        };
    }])
    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$state', '$log', '$stateParams', 'URLPREFIX', 'ArticlesService', 'LoaderService', 'ToastService', function ($scope, $http, $state, $log, $stateParams, URLPREFIX, ArticlesService, LoaderService, ToastService) {
        var id = $stateParams.id;
        LoaderService.show();
        ArticlesService.getArticle(URLPREFIX.url + URLPREFIX.articleURL, id)
            .then(function (res) {
                LoaderService.hide();
                var article = res.data.result[0];
                $scope.data = {
                    id: id,
                    title: article.title,
                    date: article.date,
                    content: article.content
                };
                $log.debug('get article for edit', article);
            }, function (err) {
                LoaderService.hide();
                $log.debug(err);
            });
        $scope.submit = function () {
            LoaderService.show();
            ArticlesService.putArticle(URLPREFIX.url + URLPREFIX.articleURL, $scope.data)
                .then(function (res) {
                    LoaderService.hide();
                    ToastService.show('Updated successfully');
                    $log.debug(res);
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Something Went Wrong');
                    $log.debug(err);
                });
        }
    }])
