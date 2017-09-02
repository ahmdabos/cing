'use strict';
angular.module('app')
    .config(['$urlRouterProvider', '$stateProvider', function ($urlRouterProvider, $stateProvider) {
        $stateProvider
            .state('/', {
                url: '/',
                templateUrl: 'views/home.html'
            })
            .state('login', {
                url: '/login',
                template: '<ui-view/>'
            })
            .state('login.index', {
                url: '/index',
                templateUrl: 'views/login/index.html',
                controller: 'LoginController'
            })
            .state('articles', {
                url: '/articles',
                template: '<ui-view/>'
            })
            .state('articles.index', {
                url: '/index',
                templateUrl: 'views/articles/index.html',
                controller: 'ArticlesController'
            })
            .state('articles.add', {
                url: '/add',
                templateUrl: 'views/articles/add.html',
                controller: 'AddArticleController'
            })
            .state('articles.edit', {
                url: '/edit/:id',
                templateUrl: 'views/articles/edit.html',
                controller: 'EditArticleController'
            });
        $urlRouterProvider.otherwise('views/home.html');

    }]);

