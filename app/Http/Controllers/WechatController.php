<?php

namespace App\Http\Controllers;

use EasyWeChat\Message\Image;
use EasyWeChat\Message\Video;
use EasyWeChat\Message\Voice;
use Illuminate\Http\Request;

class WechatController extends Controller
{
    /**
     * 处理微信的请求消息
     *
     * @return string
     */
    public function serve()
    {
        \Log::info('request arrived.');
        $wechat = app('wechat');
        $userApi = $wechat->user;
        $wechat->server->setMessageHandler(function ($message) use ($wechat, $userApi) {
            switch ($message->MsgType) {
                case 'event':
                    return '收到事件消息';
                    break;
                case 'text':
                    return '您好,' . $userApi->get($message->FromUserName)->nickname;
                    break;
                case 'image':
                    $image = new Image(['media_id' => '']);
                    $wechat->staff->message($image)->to($message->FromUserName)->send();
                    return "Image";
                    break;
                case 'voice':
                    $voice = new Voice(['media_id' => '']);
                    $wechat->staff->message($voice)->to($message->FromUserName)->send();
                    return "Voice";
                    break;
                case 'video':
                    $video = new Video(['media_id' => '']);
                    $wechat->staff->message($video)->to($message->FromUserName)->send();
                    return "Video";
                    break;
                case 'location':
                    return '收到坐标消息';
                    break;
                case 'link':
                    return '收到链接消息';
                    break;
                // ... 其它消息
                default:
                    return '收到其它消息';
                    break;
            }
        });
        \Log::info('return response.');
        return $wechat->server->serve();
    }
}
