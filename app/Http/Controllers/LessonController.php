<?php

namespace App\Http\Controllers;

use App\Lesson;
use App\Transformer\LessonTransformer;
use Illuminate\Http\Request;

class LessonController extends ApiController
{

    public $transformer;

    /**
     * LessonController constructor.
     * @param $transformer
     */
    public function __construct(LessonTransformer $transformer)
    {
        $this->transformer = $transformer;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lessons = Lesson::all();
        return \Response::json([
            'status' => 'success',
            'status_code' => 200,
            'data' => $this->transformer->transformCollection($lessons)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
//        $lesson = Lesson::findOrFail($id);
//        return \Response::json([
//            'status' => 'success',
//            'status_code' => 200,
//            'data' => $this->transformer->transform($lesson)
//        ]);

        $lesson = Lesson::find($id);//404
        if(!$lesson){
            return $this->responseNotFound();
        }
        return \Response::json([
            'status' => 'success',
            'status_code' => 200,
            'data' => $this->transformer->transform($lesson)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    //下面的内容封装到Transformer去了
//    private function transformCollection($lessons)
//    {
//        return array_map(function ($lesson) {
//           return $this->transform($lesson);
//        }, $lessons->toArray());
//    }
//
//    private function transform($lesson)
//    {
//        //控制输出的内容，将创建时间和修改时间隐藏
//        return [
//            'title' => $lesson['title'],
//            'content' => $lesson['body'],
//            'is_free' => (boolean)$lesson['free']
//        ];
//    }
}
