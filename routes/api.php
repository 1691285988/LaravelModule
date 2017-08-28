<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::group(['prefix' => 'v1'], function () {
//    Route::resource('lessons', '\App\Http\Controllers\LessonController');
//});

$api = app('Dingo\Api\Routing\Router');

//用于测试JWT和DingoAPI的功能
$api->version('v1', function ($api) {
    $api->group(['namespace' => 'App\Api\Controllers'], function ($api) {
        $api->post('user/login', 'AuthController@authenticate');
        $api->post('user/register', 'AuthController@register');
        $api->get('user/me','AuthController@getAuthenticatedUser');
        $api->group(['middleware'=>'jwt.auth'],function ($api){
            $api->get('lessons', 'LessonController@index');
            $api->get('lessons/{id}', 'LessonController@show');
        });
    });
});



//按版本直接显示的实验我做不出来，,目前想到的解决办法是 使用路由的prefix来处理版本的问题
//return app('Dingo\Api\Routing\UrlGenerator')->version('v2')->route('users.index',['id'=>22]);
//$api->version('v1', function ($api) {
////    $api->get('users/{id}', 'App\Api\V1\Controllers\UserController@show');
//    $api->get('users/{id}', ['as' => 'users.index', 'uses' => 'App\Api\V1\Controllers\UserController@show']);
//});
//
//$api->version('v2', function ($api) {
////    $api->get('users/{id}', 'App\Api\V2\Controllers\UserController@show');
//    $api->get('users/{id}', ['as' => 'users.index', 'uses' => 'App\Api\V2\Controllers\UserController@show']);
//});

