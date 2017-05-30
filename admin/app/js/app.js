angular.module('app', [
	'ui.router'
])
.constant('URLPREFIX', {
    url: 'http://localhost/cing/restfull/api/',
    articleURL: 'apiarticles'
})
.value('_', window._)

