<?php
Route::any('/wechat', 'WechatController@serve');
Route::group(['prefix' => 'wechat'], function () {
    Route::get("/users", "\App\Wechat\Controllers\UserController@index");
    Route::get("/users/{openId}", "\App\Wechat\Controllers\UserController@show");
});