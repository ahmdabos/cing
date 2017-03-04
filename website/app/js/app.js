angular.module('app', [
	'ui.router',
])
.constant('URLPREFIX', {
    url: 'http://localhost/cing/API/api/'
})
.value('_', window._)
.config(function ($urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
});
