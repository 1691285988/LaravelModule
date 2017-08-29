<?php

namespace App;

class Product extends Model
{
    public $name;
    public $price;

    /**
     * ProductTest constructor.
     * @param $name
     */
    public function __construct($name, $price)
    {
        $this->name = $name;
        $this->price = $price;
    }


}
