<?php

namespace App\Http\Controllers;

use App\Events\OrderShipped;
use Illuminate\Http\Request;

class EventController extends Controller
{
    public function index(){
        echo '1<br/>';

        echo '<pre>';
        event(new OrderShipped('测试的内容'));

        echo "</pre>";
        echo '<br/>2';
        return '';
    }
}
