<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class pegawaiTableSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    
    
    public function run()
    {
    	$faker = Faker::create('id_ID');
        for($i=0;$i<=100;$i++){

        	DB::table('pegawai')->insert([
        		'name' => $faker->name,
        		'email' => $faker->unique()->email,
                'job' => $faker->jobTitle,
                'status' => $faker->boolean(),
                'created_at' => $faker->dateTime($max='now'),
        		'updated_at' => $faker->dateTimeBetween('now','+2 years')
        	]);
        }
    }
}
