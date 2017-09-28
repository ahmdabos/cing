<?php
$router->get('/', function () use ($router) {
    return $router->app->version();
});
$router->group(['prefix' => 'api'], function ($app) {
    $app->post('articles/add', 'Articles@postArticle');
    $app->put('articles/edit', 'Articles@putArticle');
    $app->delete('articles/delete/{id}', 'Articles@deleteArticle');
    $app->get('articles/view', 'Articles@getArticle');
    $app->get('articles/index/{page}/{limit}[/{keyword}]', 'Articles@getArticles');
    $app->post('uploads', 'Uploads@uploadFile');
});
