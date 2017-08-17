<?php
Route::any('/wechat', 'WechatController@serve');
Route::group(['prefix' => 'wechat'], function () {
    Route::get("/users", "\App\Wechat\Controllers\UserController@index");
    Route::get("/users/{openId}", "\App\Wechat\Controllers\UserController@show");
    Route::post("/users/{openId}/remark", "\App\Wechat\Controllers\UserController@remark");
});