<?php
namespace App\Wechat\Controllers;

use EasyWeChat\Foundation\Application;
use Illuminate\Http\Request;

class MaterialController extends Controller
{
    public $wechat;
    public $material;
    public $material_temporary;


    //自动容器注入微信控制类
    public function __construct(Application $wechat)
    {
        $this->wechat = $wechat;
        $this->material = $wechat->material;
        $this->material_temporary = $wechat->material_temporary;
    }

    //获取关注当前微信公众号的所有用户
    public function index()
    {
        return $this->wechat->user->lists();
    }

    //创建图片素材页面
    public function image()
    {

    }

    //创建音频素材页面
    public function audio()
    {

    }

    //创建视频素材页面
    public function video()
    {

    }

    //上交图片素材操作
    public function imageCreate()
    {

    }

    //上交音频素材操作
    public function audioCreate()
    {

    }

    //上交视频素材操作
    public function videoCreate()
    {

    }
}