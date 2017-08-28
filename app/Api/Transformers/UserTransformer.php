<?php
/**
 * Created by PhpStorm.
 * User: zhaoj
 * Date: 2017/8/27
 * Time: 19:26
 */

namespace App\Api\Transformers;

use App\User;
use League\Fractal\TransformerAbstract;

//User表的限定输出
class UserTransformer extends TransformerAbstract
{
    public function transform(User $lesson)
    {
        return [
            'name' => $lesson['name'],
            'email' => $lesson['email'],
        ];
    }
}