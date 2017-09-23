<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});
$router->group(['prefix' => 'api'], function ($app) {
    $app->post('articles/add', 'Articles@postArticle');
    $app->put('articles/edit', 'Articles@putArticle');
    $app->delete('articles/delete/{id}', 'Articles@deleteArticle');
    $app->get('articles/view', 'Articles@getArticle');
    $app->get('articles/index/{page}/{keyword}/{limit}', 'Articles@getArticles');
    $app->post('uploads', 'Uploads@uploadFile');
});
