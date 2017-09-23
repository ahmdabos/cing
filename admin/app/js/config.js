'use strict';
angular.module('app')
    .constant('URL', {
        baseApi: 'http://localhost:8000/api/',
        articleApi: 'articles',
        uploadApi: 'uploads',
        authenticationsApi: 'apiauthentications'
    })
    .config( function ($httpProvider) {
        return $httpProvider.interceptors.push('HttpRequestInterceptorService');
    })
    .value('_', window._);