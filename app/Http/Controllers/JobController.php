<?php

namespace App\Http\Controllers;

use App\Jobs\FileAppendContent;
use Illuminate\Http\Request;

class JobController extends Controller
{
    //创建队列的内容
    public function create()
    {
        //\Storage::disk('local')->put('file.txt', 'Contents');
        //\Storage::append('file.log', 'Appended Text');
        $this->dispatch(new FileAppendContent('爱奇艺VIP会员.'));
    }
}
