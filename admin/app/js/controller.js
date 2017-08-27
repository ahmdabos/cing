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
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URLPREFIX', 'ArticlesService', 'LoaderService', 'ToastService','FileUploader', function ($scope, $http, $state, $log, $filter, URLPREFIX, ArticlesService, LoaderService, ToastService,FileUploader) {
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
        uploader.onCompleteItem = function(fileItem, response, status, headers) {
            console.info('onCompleteItem', fileItem, response, status, headers);
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
    //Upload File Controller
   /* .controller('UploadFile', ['$scope', 'FileUploader','URLPREFIX', function($scope, FileUploader,URLPREFIX) {
        var uploader = $scope.uploader = new FileUploader({
            url: URLPREFIX.url + 'apiupload'
        });

        // a sync filter
        uploader.filters.push({
            name: 'syncFilter',
            fn: function(item /!*{File|FileLikeObject}*!/, options) {
                console.log('syncFilter');
                return this.queue.length < 10;
            }
        });

        // an async filter
        uploader.filters.push({
            name: 'asyncFilter',
            fn: function(item /!*{File|FileLikeObject}*!/, options, deferred) {
                console.log('asyncFilter');
                setTimeout(deferred.resolve, 1e3);
            }
        });

        // CALLBACKS

        uploader.onWhenAddingFileFailed = function(item /!*{File|FileLikeObject}*!/, filter, options) {
            console.info('onWhenAddingFileFailed', item, filter, options);
        };
        uploader.onAfterAddingFile = function(fileItem) {
            console.info('onAfterAddingFile', fileItem);
        };
        uploader.onAfterAddingAll = function(addedFileItems) {
            console.info('onAfterAddingAll', addedFileItems);
        };
        uploader.onBeforeUploadItem = function(item) {
            console.info('onBeforeUploadItem', item);
        };
        uploader.onProgressItem = function(fileItem, progress) {
            console.info('onProgressItem', fileItem, progress);
        };
        uploader.onProgressAll = function(progress) {
            console.info('onProgressAll', progress);
        };
        uploader.onSuccessItem = function(fileItem, response, status, headers) {
            console.info('onSuccessItem', fileItem, response, status, headers);
        };
        uploader.onErrorItem = function(fileItem, response, status, headers) {
            console.info('onErrorItem', fileItem, response, status, headers);
        };
        uploader.onCancelItem = function(fileItem, response, status, headers) {
            console.info('onCancelItem', fileItem, response, status, headers);
        };
        uploader.onCompleteItem = function(fileItem, response, status, headers) {
            console.info('onCompleteItem', fileItem, response, status, headers);

        };
        uploader.onCompleteAll = function() {
            console.info('onCompleteAll');
        };

        console.info('uploader', uploader);
    }]);
*/