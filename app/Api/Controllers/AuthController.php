<?php
/**
 * Created by PhpStorm.
 * User: zhaoj
 * Date: 2017/8/27
 * Time: 21:47
 */

namespace App\Api\Controllers;

use App\Api\Transformers\LessonTransformer;
use App\Api\Transformers\UserTransformer;
use App\Lesson;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Illuminate\Http\Request;
use App\User;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;


class AuthController extends BaseController
{
    public function authenticate(Request $request)
    {
        // grab credentials from the request
        $credentials = $request->only('email', 'password');

        try {
            // attempt to verify the credentials and create a token for the user
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 401);
            }
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        // all good so return the token
        return response()->json(compact('token'));
    }

    public function register(Request $request)
    {
        $newUser = [
            'email' => request('email'),
            'name' => request('name'),
            'password' => bcrypt(request('password'))
        ];
        $user = User::create($newUser);
        $token = \JWTAuth::fromUser($user);
        return $this->response()->json(compact('token'));
    }

    // somewhere in your controller
    public function getAuthenticatedUser()
    {
        try {

            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 404);
            }

        } catch (TokenExpiredException $e) {

            return response()->json(['token_expired'], $e->getStatusCode());

        } catch (TokenInvalidException $e) {

            return response()->json(['token_invalid'], $e->getStatusCode());

        } catch (JWTException $e) {

            return response()->json(['token_absent'], $e->getStatusCode());

        }

        // the token is valid and we have found the user via the sub claim
        //return response()->json(compact('user'));

        return $this->item($user, new UserTransformer());
    }
}