<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $name;

    /**
     * ProductTest constructor.
     * @param $name
     */
    public function __construct($name)
    {
        $this->name = $name;
    }

}
