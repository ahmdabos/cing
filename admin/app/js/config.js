'use strict';
angular.module('app')
.constant('URLPREFIX', {
    url: 'http://localhost/cing/restfull/api/',
    articleURL: 'apiarticles'
})
.value('_', window._);