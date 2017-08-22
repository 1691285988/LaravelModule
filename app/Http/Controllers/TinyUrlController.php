<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/**
 * 短地址控制器
 * Class TinyUrlController
 * @package App\Http\Controllers
 */
class TinyUrlController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($url = '')
    {
        if (empty($url))
            return view('tinyurl.index');
        else {
            $result = "www.baidu.com";
            return view('tinyurl.index', compact('result'));
        }
    }
}
