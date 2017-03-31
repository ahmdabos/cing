'use strict';
angular.module('app')

// Data Service
    .factory('DataService', ['$http', '$q', function ($http, $q) {
        return {
            getOne: function (url, id) {
                var deferred = $q.defer();
                return $http({
                    url: url,
                    method: "GET",
                    params: {id: id}
                })
                    .then(function (response) {
                        deferred.resolve(response);
                        return deferred.promise;
                    }, function (response) {
                        deferred.reject(response);
                        return deferred.promise;
                    });
            },
            getAll: function (url) {
                var deferred = $q.defer();
                return $http({
                    url: url,
                    method: "GET"
                }).then(function (response) {
                    deferred.resolve(response);
                    return deferred.promise;
                }, function (response) {
                    deferred.reject(response);
                    return deferred.promise;
                });
            },
            post: function (url, data) {
                var deferred = $q.defer();
                return $http({
                    method: 'POST',
                    url: url,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                    data: data,
                    transformRequest: function (obj) {
                        var p, str;
                        str = [];
                        for (p in obj) {
                            str.push(encodeURIComponent(p) + '=' + encodeURIComponent(obj[p]));
                        }
                        return str.join('&');
                    }
                }).then(function (response) {
                    deferred.resolve(response.data);
                    return deferred.promise;
                }, function (response) {
                    deferred.reject(response);
                    return deferred.promise;
                });

            }

        }
    }])

    // Article Service
    .factory('ArticlesService', ['DataService', function (DataService) {
        return {
            getArticle: function getArticle(url, id) {
                return DataService.getOne(url, id);
            },
            getArticles: function getArticles(url) {
                return DataService.getAll(url);
            },
            postArticle: function postArticle(url, data) {
                return DataService.post(url, data);
            }
        }

    }])
;

