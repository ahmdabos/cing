'use strict';
angular.module('app')
.constant('URL', {
    baseApi: 'http://localhost/cing/restfull/api/',
    articleApi: 'apiarticles',
    uploadApi:'apiuploads',
    authenticationsApi:'apiauthentications'
})
.config(['$httpProvider','$cookies', function($httpProvider,$cookies) {
    if($cookies.get('currentUser')){
        var currentUser = JSON.parse($cookies.get('currentUser'));
        var token = currentUser.token;
        $httpProvider.defaults.headers.common['Authorization'] = 'Bearer ' + token;
    }
}])
.value('_', window._);