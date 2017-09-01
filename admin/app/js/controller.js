'use strict';
angular.module('app')
//Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URL', 'ArticlesService', 'PagerService', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, URL, ArticlesService, PagerService, LoaderService, ToastService) {
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
            ArticlesService.getArticles(URL.baseApi + URL.articleApi + '/?page=' + page + '&search=' + keyword + '&limit=' + limit + '&offset=' + limit)
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
            ArticlesService.deleteArticle(URL.baseApi + URL.articleApi + '/' + id)
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
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $filter, URL, ArticlesService, LoaderService, ToastService, FileUploader) {
        $scope.date = $filter('date')(new Date(), 'yyyy-MM-dd hh:mm:ss');
        $scope.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        $scope.isAttachments = false;
        var uploader = $scope.uploader = new FileUploader({
            url: URL.baseApi + URL.uploadApi,
            queueLimit: 1
        });
        uploader.onAfterAddingFile = function (addedFileItems) {
            $scope.isAttachments = true;
            if (addedFileItems.file.size > 2097152) {
                $scope.isFileSizeError = true;
                addedFileItems.remove();
            }else{
                $scope.isFileSizeError = false;
            }
            if (addedFileItems.file.type != 'image/jpeg' && addedFileItems.file.type != 'image/jpg') {
                $scope.isFileTypeError = true;
                addedFileItems.remove();
            }else{
                $scope.isFileTypeError = false;
            }
        };
        $scope.submit = function () {
            if ($scope.form.$valid && !$scope.isFileTypeError && !$scope.isFileSizeError) {
                LoaderService.show();
                var data = {
                    title: $scope.title,
                    date: $scope.date,
                    content: $scope.content
                };
                if ($scope.isAttachments === true) {
                    uploader.uploadAll();
                    uploader.onCompleteItem = function (fileItem, response, status, headers) {
                        var responseData = JSON.parse(response);
                        if (responseData.status == 1) {
                            data.image = responseData.fileNewName;
                            ArticlesService.postArticle(URL.baseApi + URL.articleApi, data)
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
                        } else {
                            LoaderService.hide();
                            ToastService.show('could not upload attachment');
                        }
                    };
                }
                else if ($scope.isAttachments === false) {
                    ArticlesService.postArticle(URL.baseApi + URL.articleApi, data)
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
            }
        };
    }])
    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$state', '$log', '$stateParams', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', function ($scope, $http, $state, $log, $stateParams, URL, ArticlesService, LoaderService, ToastService) {
        var id = $stateParams.id;
        LoaderService.show();
        ArticlesService.getArticle(URL.baseApi + URL.articleApi, id)
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
            ArticlesService.putArticle(URL.baseApi + URL.articleApi, $scope.data)
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
    }]);
