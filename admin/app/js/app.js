angular.module('app', [
	'ui.router'
])
.constant('URLPREFIX', {
    url: 'http://localhost/cing/api/api/',
    articleURL: 'apiarticles'
})
.value('_', window._)

