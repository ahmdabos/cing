'use strict';
angular.module('app')
    .constant('URL', {
        baseApi: 'http://localhost/cing/restfull/api/',
        articleApi: 'apiarticles',
        uploadApi: 'apiuploads',
        authenticationsApi: 'apiauthentications'
    })
    .config( function ($httpProvider) {
        return $httpProvider.interceptors.push('HttpRequestInterceptorService');
    })
    .value('_', window._);