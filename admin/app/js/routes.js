'use strict';
angular.module('app')
    .config(['$urlRouterProvider', '$stateProvider', function ($urlRouterProvider, $stateProvider) {
        $stateProvider
            .state('/', {
                url: '/',
                templateUrl: 'views/home.html'
            })
            .state('articles', {
                url: '/articles',
                template: '<ui-view/>'
            })
            .state('articles.index', {
                url: '/index',
                templateUrl: 'views/articles/articles.index.html',
                controller: 'ArticlesController'
            })
            .state('articles.add', {
                url: '/add',
                templateUrl: 'views/articles/articles.add.html',
                controller: 'AddArticleController'
            })
            .state('articles.edit', {
                url: '/edit/:id',
                templateUrl: 'views/articles/articles.edit.html',
                controller: 'EditArticleController'
            });
        $urlRouterProvider.otherwise('views/home.html');

    }]);

