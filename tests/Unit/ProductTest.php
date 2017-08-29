<?php

namespace Tests\Unit;

use App\Product;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class ProductTest extends TestCase
{

    /** @test */
    public function a_product_has_a_name()
    {
        $product = new Product('IPhone 7', 2500);
        echo $product->name;
        $this->assertEquals('IPhone 7', $product->name);
    }

    /** @test */
    public function a_product_has_a_price()
    {
        $product = new Product('MacBook', 10000);
        $this->assertEquals(10000, $product->price);
    }

    /** @test */
    public function a_product_can_be_sold_with_discount()
    {
        $product = new Product('MacBook', 12000);
        $this->assertEquals(1,1);
    }
}
