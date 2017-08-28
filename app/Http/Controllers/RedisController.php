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
        //Redis::set('name', 'Taylor');

//        Redis::pipeline(function ($pipe) {
//            for ($i = 0; $i < 1000; $i++) {
//                $pipe->set("key:$i", $i);
//            }
//        });


        $redis = Redis::connection();
//        $redis->pipeline(function ($pipe) {
//            for ($i = 0; $i < 1000; $i++) {
//                $pipe->set("value:$i", $i);
//            }
//        });

        $redis->select(4);
        $redis->pipeline(function ($pipe) {
            for ($i = 0; $i < 1000; $i++) {
                $pipe->set("value:$i", $i);
            }
        });

//        return $redis->info();
    }
}
