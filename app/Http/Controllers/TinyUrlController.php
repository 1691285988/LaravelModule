<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

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

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'url' => 'required|url'
        ], [
            'url' => request('url') . '不是合法的超链接地址!',
            'required' => '请输入URL地址'
        ]);
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator);
        } else {

        }
    }
}
