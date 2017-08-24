<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;

/**
 * OAuth2.0的例子示范
 * Class OauthController
 * @package App\Http\Controllers
 *
 * 我使用的不是Laravel官方的Socialite
 * 而是使用安正超的Laravel-socialite
 *
 * 文档的地址(使用安正超的这个库的好处是，集成了国内重要网站的三方登陆:)
 * https://github.com/overtrue/laravel-socialite
 * https://github.com/overtrue/socialite
 *
 * Now we support the following sites:
 *
 * facebook, github, google, linkedin, weibo, qq, wechat, wechat_open, and douban.
 *
 * Each drive uses the same configuration keys: client_id, client_secret, redirect.
 *
 * 'wechat_open' => [
 * 'client_id'     => 'your-app-id',
 * 'client_secret' => ['your-component-appid', 'your-component-access-token'],
 * 'redirect'      => 'http://localhost/socialite/callback.php',
 * ]
 */
class OauthController extends Controller
{

    /**
     * Redirect the user to the GitHub authentication page.
     *
     * @return Response
     */
    public function redirectToProvider()
    {
        return Socialite::driver('github')->redirect();
    }

    /**
     * Obtain the user information from GitHub.
     *
     * @return Response
     */
    public function handleProviderCallback()
    {
        $user = Socialite::driver('github')->user();

        \Log::info('GitHub三方登录', compact('user') );

        dd($user);
    }

    /**
     * Redirect the user to the GitHub authentication page.
     *
     * @return Response
     */
    public function redirectToProvider_qq()
    {
        return Socialite::driver('qq')->redirect();
    }

    /**
     * Obtain the user information from GitHub.
     *
     * @return Response
     */
    public function handleProviderCallback_qq()
    {
        $user = Socialite::driver('qq')->user();

        \Log::info('QQ三方登录', compact('user') );

        dd($user);
    }
}
