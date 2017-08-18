<?php
namespace App\Wechat\Controllers;

use EasyWeChat\Foundation\Application;
use Illuminate\Http\Request;

class BroadcastController extends Controller
{
    public $wechat;
    public $broadcast;

    //自动容器注入微信控制类
    public function __construct(Application $wechat)
    {
        $this->wechat = $wechat;
        $this->broadcast = $wechat->broadcast;
    }

    //群发消息
    public function messages()
    {
        $this->broadcast->send('news', '', []);
    }

    //群发文本消息
    public function textMessages()
    {
        $this->broadcast->sendText('生活大爆炸!', '', ['obnyc1PvGeDLP_oe3a4lp6RCB9Bc','obnyc1AJGNNJldnJwWWtPpZg3P7M']);
        return 'send';
    }
}