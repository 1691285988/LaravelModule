<?php

namespace App\Http\Controllers;

use App\Jobs\FileAppendContent;
use Carbon\Carbon;
use Illuminate\Http\Request;

class JobController extends Controller
{
    //创建队列的内容
    public function create()
    {
        //\Storage::disk('local')->put('file.txt', 'Contents');
        //\Storage::append('file.log', 'Appended Text');

        $job = (new FileAppendContent('乐视VIP会员.'))->delay(Carbon::now()->addSeconds(15));
        $this->dispatch($job);
    }
}
