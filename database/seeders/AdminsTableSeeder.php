<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Admin;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admins = [
            [
                'firstName'=>'Sim',
                'lastName'=>'Hul',
                'email'=>'hul.sim@student.passerellesnumeriques.org',
                'password'=>bcrypt('123456789'),
                'image'=>null,
            ],
            [
                'firstName'=>'Vanndy',
                'lastName'=>'Houn',
                'email'=>'vanndy.ngoun@student.passerellesnumeriques.org',
                'password'=>bcrypt('123456789'),
                'image'=>null,

            ]
            ];
            foreach($admins as $key => $value){
                Admin::create($value);
            }
    }
}
