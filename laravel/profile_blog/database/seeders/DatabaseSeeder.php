<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $user = User::factory()->create([
            'name' => 'raihan',
            'username' => 'sendmeabouquet',
            'email' => 'r@r',
            'password' => "r"
        ]);

        Category::factory()->create([
            'name' => "shitpost",
            'slug' => "Shitposting"
        ]);

        Category::factory()->create([
            'name' => "curhat",
            'slug' => "Curhatan Maut"
        ]);

    }

}
