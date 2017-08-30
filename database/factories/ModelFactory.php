<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});


//添加文章的自动工厂方法
$factory->define(App\Post::class, function (Faker\Generator $faker) {
    return [
        'user_id' => 1,
        'title' => $faker->sentence(6),
        'content' => $faker->paragraph(10)
    ];
});

//后台管理员自动工厂方法
$factory->define(App\AdminUser::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'password' => $password ?: $password = bcrypt('secret'),
    ];
});

//创建而是API查询需要使用的方法
$factory->define(App\Lesson::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->name,
        'body' => $faker->sentences(10),
        'free' => $faker->boolean()
    ];
});

//创建单元测试用的工厂添加方法
$factory->define(App\Article::class, function (Faker\Generator $faker) {
    return [
        'title'=> $faker->sentence
    ];
});