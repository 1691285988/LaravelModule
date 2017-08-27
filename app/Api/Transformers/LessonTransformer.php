<?php
/**
 * Created by PhpStorm.
 * User: zhaoj
 * Date: 2017/8/27
 * Time: 19:26
 */

namespace App\Api\Transformers;

use App\Lesson;
use League\Fractal\TransformerAbstract;

class LessonTransformer extends TransformerAbstract
{
    public function transform(Lesson $lesson)
    {
        return [
            'title' => $lesson['title'],
            'content' => $lesson['body'],
            'is_free' => $lesson['title']
        ];
    }
}