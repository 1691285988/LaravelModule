<?php
namespace App\Wechat\Controllers;

use EasyWeChat\Foundation\Application;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public $wechat;

    //自动容器注入微信控制类
    public function __construct(Application $wechat)
    {
        $this->wechat = $wechat;
    }

    //获取关注当前微信公众号的所有用户
    public function index()
    {
        return $this->wechat->user->lists();
    }

    //根据OpenID获取用户的信息,从微信送过来的用户的资料
    public function show($openId)
    {
        return $this->wechat->user->get($openId);
    }

    //为指定用户修改备注
    public function remark($openId)
    {
        $this->validate(request(), [
            'remark' => 'required'
        ]);
        $remark = request('remark');
        return $this->wechat->user->remark($openId, $remark);
    }
}