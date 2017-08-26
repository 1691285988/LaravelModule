<?php
/**
 * Created by PhpStorm.
 * User: zhaoj
 * Date: 2017/8/26
 * Time: 8:23
 */

namespace App\Transformer;

/**
 * Lesson的格式输出类
 * Class LessonTransformer
 * @package App\Transformer
 */
class LessonTransformer extends Transformer
{


    public function transform($lesson)
    {
        //控制输出的内容，将创建时间和修改时间隐藏
        return [
            'title' => $lesson['title'],
            'content' => $lesson['body'],
            'is_free' => (boolean)$lesson['free']
        ];
    }
}