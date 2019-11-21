<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class JobReferencesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('en_US');
 
    	for($i = 1; $i <= 30; $i++){

            DB::table('job_references')->insert([
                'nama_pekerjaan' => $faker->jobTitle,
            ]);
        }
    }
}
