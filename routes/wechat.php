<?php
Route::any('/wechat', 'WechatController@serve');
Route::group(['prefix' => 'wechat'], function () {
    //用户管理
    Route::get("/users", "\App\Wechat\Controllers\UserController@index");
    Route::get("/users/{openId}", "\App\Wechat\Controllers\UserController@show");
    Route::post("/users/{openId}/remark", "\App\Wechat\Controllers\UserController@remark");
    //素材管理
    Route::get('/materials','\App\Wechat\Controllers\MaterialController@materials');
    Route::get('/materials/{mediaId}','\App\Wechat\Controllers\MaterialController@media');

    Route::post("/create/image", "\App\Wechat\Controllers\MaterialController@imageCreate");
    Route::post("/create/audio", "\App\Wechat\Controllers\MaterialController@audioCreate");
    Route::post("/create/video", "\App\Wechat\Controllers\MaterialController@videoCreate");

    //群发消息
    Route::get('/broadcast/message','\App\Wechat\Controllers\BroadcastController@messages');
    Route::get('/broadcast/textMessages','\App\Wechat\Controllers\BroadcastController@textMessages');
});