<?php
Route::any('/wechat', 'WechatController@serve');
Route::group(['prefix' => 'wechat'], function () {
    //用户管理
    Route::get("/users", "\App\Wechat\Controllers\UserController@index");
    Route::get("/users/{openId}", "\App\Wechat\Controllers\UserController@show");
    Route::post("/users/{openId}/remark", "\App\Wechat\Controllers\UserController@remark");
    //素材管理
    Route::get("/image", "\App\Wechat\Controllers\MaterialController@image");
    Route::get("/audio", "\App\Wechat\Controllers\MaterialController@audio");
    Route::get("/video", "\App\Wechat\Controllers\MaterialController@video");
    Route::post("/create/image", "\App\Wechat\Controllers\MaterialController@imageCreate");
    Route::post("/create/audio", "\App\Wechat\Controllers\MaterialController@audioCreate");
    Route::post("/create/video", "\App\Wechat\Controllers\MaterialController@videoCreate");
});