'use strict';
angular.module('app')
    .constant('URL', {
        baseApi: 'http://localhost/cing/restfull/api/',
        articleApi: 'apiarticles',
        uploadApi: 'apiuploads',
        authenticationsApi: 'apiauthentications'
    })

    .run(function ($http, $cookies) {
        var currentUser = JSON.parse($cookies.get('currentUser'));
        var token = currentUser.token;
        $http.defaults.headers.common.Authorization = 'bearer ' + token;
    })


    .value('_', window._);