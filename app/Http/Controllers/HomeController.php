<?php

namespace App\Http\Controllers;

use App\PostTopic;
use Illuminate\Http\Request;
use App\Topic;

class HomeController extends Controller
{
    public function phpinfo()
    {
        return view('home.phpinfo');
    }
}
