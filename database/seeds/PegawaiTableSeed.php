<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\pegawaiModel;

class PegawaiTableSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    
    
    public function run()
    {
        factory(pegawaiModel::class,100)->create();
    }
}
