'use strict';
angular.module('app')
.constant('URLPREFIX', {
    url: 'http://localhost/cing/restfull/api/',
    articleURL: 'apiarticles',
    uploadURL:'apiupload'
})
.value('_', window._);