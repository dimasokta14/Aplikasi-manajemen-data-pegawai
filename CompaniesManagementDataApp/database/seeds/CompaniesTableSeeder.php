<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class CompaniesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 50; $i++){

            DB::table('companies')->insert([
                'nama' => $faker->company,
                'email' => $faker->unique()->safeEmail,
                'website' => $faker->domainName,
                'alamat' => $faker->streetAddress,
                'logo' => $faker->image('storage/app/company',400,300, null, false)
            ]);
        }
    }
}
