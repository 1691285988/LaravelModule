<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;

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
        $user = Socialite::driver('github')->stateless()->user();

        \Log::info('GitHub三方登录', compact('user') );
    }
}
