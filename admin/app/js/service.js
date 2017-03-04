'use strict';
angular.module('app')

// Data Service
    .factory('DataService', function ($http, $q) {
        return {
            getAll: function (url) {
                var deferred = $q.defer();
                return $http.get(URLPREFIX.URL + url)
                    .then(function (response) {
                        deferred.resolve(response.data);
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
                    transformRequest: function(obj) {
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
    })

    // Article Serive
    .factory('NewsService', ['DataService', function (DataService) {
        return {

            getArticle: function getArticle() {
                return DataService.getAll();
            },

            postArticle: function postArticle(url, data) {
                return DataService.post(url, data);
            }
        }

    }])
;

