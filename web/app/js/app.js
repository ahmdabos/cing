angular.module('app', [
	'ui.router',
])
.constant('URLPREFIX', {
    url: 'http://localhost/cing/restfull/restfull/'
})
.value('_', window._)
.config(function ($urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
});
