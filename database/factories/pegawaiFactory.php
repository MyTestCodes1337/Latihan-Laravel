<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\pegawaiModel;
use Faker\Generator as Faker;

$factory->define(pegawaiModel::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->email,
        'job' => $faker->jobTitle,
        'status' => $faker->boolean(),
        'created_at' => $faker->dateTime($max='now'),
        'updated_at' => $faker->dateTimeBetween('now','+2 years')
    ];
});
