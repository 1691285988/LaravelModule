<?php
/**
 * Created by PhpStorm.
 * User: zhaoj
 * Date: 2017/8/29
 * Time: 11:14
 */

namespace Tests\Unit;

use App\Product;
use Tests\TestCase;

class ProductTest extends TestCase
{
    public function testAProductHasName()
    {
        $product = new Product('iPhone 7');
        $this->assertEquals('iPhone 7',$product->name);
    }
}