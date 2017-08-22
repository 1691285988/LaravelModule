<?php

namespace App\Http\Controllers;

use App\Jobs\SendMail;
use Carbon\Carbon;
use Illuminate\Http\Request;

class MailController extends Controller
{
    /**
     * 发送邮件
     */
    public function send()
    {

//        $flag = \Mail::raw('你好，我是PHP程序360！', function ($message) {
//            $to = 'zhaojt_cs@126.com';
//            $message->to($to)->subject('纯文本信息邮件测试');
//        });
//        dd($flag);

        $job = (new SendMail())->delay(Carbon::now()->addSeconds(30));
        $this->dispatch($job);
    }
}
