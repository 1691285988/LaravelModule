<?php
namespace App\Api\V1\Controllers;

use App\Api\Controllers\BaseController;

class UserController extends BaseController
{
    public function show()
    {
        return app('Dingo\Api\Routing\UrlGenerator')->version('v2')->route('users.index',['id'=>22]);
    }
}