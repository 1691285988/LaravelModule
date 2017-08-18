<?php
namespace App\Wechat\Controllers;

use EasyWeChat\Foundation\Application;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public $wechat;
    public $menu;


    //自动容器注入微信控制类
    public function __construct(Application $wechat)
    {
        $this->wechat = $wechat;
        $this->menu = $wechat->menu;
    }

    //提交菜单的json内容
    public function menus()
    {
        $buttons = [
            [
                "type" => "click",
                "name" => "今日歌曲",
                "key" => "V1001_TODAY_MUSIC"
            ],
            [
                "name" => "菜单",
                "sub_button" => [
                    [
                        "type" => "view",
                        "name" => "搜索",
                        "url" => "http://www.soso.com/"
                    ],
                    [
                        "type" => "view",
                        "name" => "视频",
                        "url" => "http://v.qq.com/"
                    ],
                    [
                        "type" => "click",
                        "name" => "赞一下我们",
                        "key" => "V1001_GOOD"
                    ],
                ],
            ],
        ];
        $this->menu->add($buttons);
    }

    //展示菜单的json内容
    public function show()
    {
        return $this->menu->current();
    }
}