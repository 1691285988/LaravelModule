<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Redis;

class RedisController extends Controller
{
    /**
     * Redis的简单使用
     */
    public function index()
    {
        Redis::set('name', 'Taylor');
        return '123';
    }
}
