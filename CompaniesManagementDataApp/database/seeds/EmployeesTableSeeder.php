<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 200; $i++){

            DB::table('employees')->insert([
                'nama' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'company_id' => $faker->numberBetween($min = 1, $max = 50),
                'job_id' => $faker->numberBetween($min = 1, $max = 30),
            ]);
        }
    }
}
