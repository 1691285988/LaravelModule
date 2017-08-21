<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ViewTestController extends Controller
{
    public function demo1()
    {
        //return view('view_test.demo1');

        //查询
        //$posts = DB::select('select * from posts where id=?', [35]);
        //$posts = DB::select('select * from posts where id in (35,36);');
        //$posts = DB::select('select * from posts where id=:id', [24]);

        //插入
        //$flag = DB::insert('insert into topics(`name`,`created_at`,`updated_at`)  VALUES ("数学","2017-08-12 09:49:01","2017-08-12 09:49:01")');

        //修改
        //$flag = DB::update('update topics set `name`="AOC" where id = 4');

        //删除
        //$flag = DB::delete('delete from topics where id = 4');

        //事务
//        try {
//            DB::transaction(function () {
//                //执行内容会自动提交事务
//            }, 5);
//        } catch (Exception $e) {
//        }


        //dd($flag);
    }
}
