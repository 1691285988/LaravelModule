<?php
namespace App\Transformer;

abstract class Transformer{
    public function transformCollection($lessons)
    {
        return array_map(function ($lesson) {
            return $this->transform($lesson);
        }, $lessons->toArray());
    }

    //抽象方法，用于各个不同对象的输出格式的定义
    public abstract function transform($lesson);
}