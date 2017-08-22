<?php

namespace App\Http\Controllers;

use App\TinyUrl;
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
            $tinyUrl = TinyUrl::where('url', base64_decode($url))->first();
            $result = $tinyUrl->shortUrl;
            $orginal = $tinyUrl->url;
            return view('tinyurl.index', compact('result', 'orginal'));
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
            //判断数据库是否存在url
            $tinyUrl = TinyUrl::where('url', request('url'))->first();
            if ($tinyUrl) {
                return redirect('/tinyurls/index/' . base64_encode(request('url')));
            } else {
                $host = "http://6du.in/";
                $path = "?is_api=1&lurl=";
                $method = "GET";
                $headers = array();
                $query = request('url');
                $url = $host . $path . $query;
                $curl = curl_init();
                curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
                curl_setopt($curl, CURLOPT_URL, $url);
                curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($curl, CURLOPT_FAILONERROR, false);
                curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
                //curl_setopt($curl, CURLOPT_HEADER, true);
                if (1 == strpos("$" . $host, "https://")) {
                    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
                    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
                }
                $url = curl_exec($curl);
                if ($url) {
                    $tinyUrl = new TinyUrl();
                    $tinyUrl->url = $query;
                    $tinyUrl->shortUrl = $url;
                    $tinyUrl->save();
                    return redirect('/tinyurls/index/' . base64_encode(request('url')));
                } else {
                    return redirect('/tinyurls/index');
                }
            }
        }
    }
}
