<?php
Route::group(['prefix' => 'admin'], function () {
    //根目录到达位置
    Route::get('/', function () {
        return view('welcome');
    });

    //登录展示
    Route::get('/login', '\App\Admin\Controllers\LoginController@index');
    //登录行为
    Route::post('/login', '\App\Admin\Controllers\LoginController@login');

    Route::group(['middleware' => 'auth:admin'], function () {

        //首页
        Route::get('/home', '\App\Admin\Controllers\HomeController@index');
        //登出行为
        Route::get('/logout', '\App\Admin\Controllers\LoginController@logout');

        Route::group(['middleware' => 'can:system'], function () {
            //管理人员模块
            Route::get('/users', '\App\Admin\Controllers\UserController@index');
            Route::get('/users/create', '\App\Admin\Controllers\UserController@create');
            Route::post('/users/store', '\App\Admin\Controllers\UserController@store');
            Route::get('/users/{user}/role', '\App\Admin\Controllers\UserController@role');
            Route::post('/users/{user}/role', '\App\Admin\Controllers\UserController@storeRole');

            //角色
            Route::get('/roles', '\App\Admin\Controllers\RoleController@index');
            Route::get('/roles/create', '\App\Admin\Controllers\RoleController@create');
            Route::post('/roles/store', '\App\Admin\Controllers\RoleController@store');
            Route::get('/roles/{role}/permission', '\App\Admin\Controllers\RoleController@permission');
            Route::post('/roles/{role}/permission', '\App\Admin\Controllers\RoleController@storePermission');

            //权限
            Route::get('/permissions', '\App\Admin\Controllers\PermissionController@index');
            Route::get('/permissions/create', '\App\Admin\Controllers\PermissionController@create');
            Route::post('/permissions/store', '\App\Admin\Controllers\PermissionController@store');
        });

        Route::group(['middleware' => 'can:post'], function () {
            //审核模块
            Route::get('/posts', '\App\Admin\Controllers\PostController@index');
            Route::post('/posts/{post}/status', '\App\Admin\Controllers\PostController@status');
        });

        Route::group(['middleware' => 'can:topic'], function () {
            //话题模块
            Route::resource('topics', '\App\Admin\Controllers\TopicController', ['only' => ['index', 'create', 'store', 'destroy']]);
        });

        Route::group(['middleware' => 'can:notice'], function () {
            //话题模块
            Route::resource('notices', '\App\Admin\Controllers\NoticeController', ['only' => ['index', 'create', 'store', 'destroy']]);
        });

        //微信管理--素材管理
        Route::get("/wechat/material/image", '\App\Wechat\Controllers\MaterialController@image');
        Route::get("/wechat/material/audio", '\App\Wechat\Controllers\MaterialController@audio');
        Route::get("/wechat/material/video", '\App\Wechat\Controllers\MaterialController@video');
    });
});