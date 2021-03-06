<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*************** 根目录模块 *******************/
Route::get('/', function () {
    return view('welcome');
});
/*************** 根目录模块 *******************/

/*************** 页面属性测试模块 *******************/
Route::get('/view-test/demo1', '\App\Http\Controllers\ViewTestController@demo1');
/*************** 页面属性测试模块 *******************/

/*************** 登录模块 *******************/
//注册页面
Route::get('/register', '\App\Http\Controllers\RegisterController@index');
//注册行为
Route::post('/register', '\App\Http\Controllers\RegisterController@register');
//登录页面
Route::get('/login', '\App\Http\Controllers\LoginController@index');
//登录行为
Route::post('/login', '\App\Http\Controllers\LoginController@login');
/*************** 登录模块 *******************/

Route::get('/home/phpinfo', '\App\Http\Controllers\HomeController@phpinfo');

/*************************** 默认模块,登陆后访问的模块 *****************************/
Route::group(['middleware' => 'auth'], function () {
    //*********************************用户模块*********************************
    //登出行为
    Route::get('/logout', '\App\Http\Controllers\LoginController@logout');
    //个人中心
    Route::get('/user/{user}', '\App\Http\Controllers\UserController@show');
    Route::post('/user/{user}/fan', '\App\Http\Controllers\UserController@fan');
    Route::post('/user/{user}/unfan', '\App\Http\Controllers\UserController@unfan');
    Route::post('/user/{user}/star', '\App\Http\Controllers\UserController@star');
    Route::post('/user/{user}/unstar', '\App\Http\Controllers\UserController@unstar');

    //个人设置页面
    Route::get('/user/me/setting', '\App\Http\Controllers\UserController@setting');
    //个人设置操作
    Route::post('/user/me/setting', '\App\Http\Controllers\UserController@settingStore');
    //*********************************用户模块*********************************

    //*********************************文章模块*********************************
    //文章列表
    Route::get('/posts', '\App\Http\Controllers\PostController@index');
    //创建文章
    Route::get('/posts/create', '\App\Http\Controllers\PostController@create');
    Route::post('/posts', '\App\Http\Controllers\PostController@store');
    //编辑文章
    Route::get('/posts/{post}/edit', '\App\Http\Controllers\PostController@edit');
    Route::put('/posts/{post}', '\App\Http\Controllers\PostController@update');
    //删除文章
    Route::get('/posts/{post}/delete', '\App\Http\Controllers\PostController@delete');
    //搜索文章
    Route::get('/posts/search', '\App\Http\Controllers\PostController@search');
    //文章详情
    Route::get('/posts/{post}', '\App\Http\Controllers\PostController@show');
    //*********************************文章模块*********************************

    //*********************************图片上传模块*********************************
    Route::post('/posts/image/upload', '\App\Http\Controllers\PostController@imageUpLoad');
    //*********************************图片上传模块*********************************

    //*********************************专题模块*********************************
    //专题详情页
    Route::get('/topic/{topic}', '\App\Http\Controllers\TopicController@show');
    Route::post('/topic/{topic}/submit', '\App\Http\Controllers\TopicController@submit');
    //*********************************专题模块*********************************

    //*********************************评论模块*********************************
    //提交评论
    Route::post('/posts/{post}/comment', '\App\Http\Controllers\PostController@comment');
    //点赞
    Route::get('/posts/{post}/zan', '\App\Http\Controllers\PostController@zan');
    //取消点赞
    Route::get('/posts/{post}/unzan', '\App\Http\Controllers\PostController@unzan');
    //*********************************评论模块*********************************

    //*********************************通知模块*********************************
    Route::get('/notices', '\App\Http\Controllers\NoticeController@index');
    //*********************************通知模块*********************************
});
/*************************** 默认模块,登陆后访问的模块 *****************************/

/*************** 短连接资源路由模块 *******************/
Route::get('tinyurls/index/{url?}', '\App\Http\Controllers\TinyUrlController@index');
Route::post('tinyurls/create', '\App\Http\Controllers\TinyUrlController@create');
/*************** 短连接资源路由模块 *******************/

/*************** 队列任务路由模块 *******************/
Route::get('jobs/create', '\App\Http\Controllers\JobController@create');
/*************** 队列任务路由模块 *******************/

/*************** 邮箱任务路由模块 *******************/
Route::get('mail/send', '\App\Http\Controllers\MailController@send');
/*************** 邮箱任务路由模块 *******************/

/*************** 三方授权路由模块 *******************/
Route::get('oauth/github', '\App\Http\Controllers\OauthController@redirectToProvider');
Route::get('oauth/github/callback', '\App\Http\Controllers\OauthController@handleProviderCallback');
Route::get('oauth/qq', '\App\Http\Controllers\OauthController@redirectToProvider_qq');
Route::get('oauth/qq/callback', '\App\Http\Controllers\OauthController@handleProviderCallback_qq');
/*************** 三方授权路由模块 *******************/

/*************** Redis使用路由模块 *******************/
Route::get('redis/index', '\App\Http\Controllers\RedisController@index');
Route::get('redis/publish', '\App\Http\Controllers\RedisController@publish');
/*************** Redis使用路由模块 *******************/

/*****************数据库事务测试*****************************/
Route::resource('articles', '\App\Http\Controllers\ArticleController');
/*****************数据库事务测试*****************************/

/*****************事件测试*****************************/
Route::get('events', '\App\Http\Controllers\EventController@index');
/*****************事件测试*****************************/

//用于使用自定义中间件的内容
//Route::group(['prefix'=>'admin','middleware'=>'admin'],function (){
//    Route::get('/users','\App\Http\Controolers\...');
//});

include_once('admin.php');
include_once('wechat.php');