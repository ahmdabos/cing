'use strict';
angular.module('app')
.constant('URL', {
    baseApi: 'http://localhost/cing/restfull/api/',
    articleApi: 'apiarticles',
    uploadApi:'apiuploads'
})
.value('_', window._);