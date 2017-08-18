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
                    switch ($message->Event) {
                        case 'subscribe':
                            return "订阅成功!";
                            break;
                        case 'unsubscribe':
                            return "退订了!";
                            break;
                        case 'CLICK':
                            switch ($message->EventKey) {
                                case "V1001_TODAY_MUSIC":
                                    return "点击了今日歌曲";
                                    break;
                                case "V1001_GOOD":
                                    return "点击了赞扬一下";
                                    break;
                                default:
                                    break;
                            }
                            break;
                        default:
                            break;
                    }
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
