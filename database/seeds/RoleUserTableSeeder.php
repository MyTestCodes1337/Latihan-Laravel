<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\role_user;

class RoleUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [[2,1],[3,2],[5,3],[4,3]];
        foreach($data as $row){
            DB::table('role_user')->insert([
                'created_at' => date('Y-m-d H:i:s',time()),
                'updated_at' => date('Y-m-d H:i:s',time()),
                'user_id' => $row[0],
                'role_id' => $row[1]
            ]);
        }
    }
}
