<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //User::create([

        //	'name' => 'esajayantika',
        //	'email' => 'esajayantika@gmail.com',
        //	'password' => bcrypt('12345')
        //]);

        //User::create([

        //	'name' => 'bilqis',
        //	'email' => 'bilqis@gmail.com',
        //	'password' => bcrypt('12345')
        //]);

		User::factory(3)->create();

        Category::create([

        	'name' => 'Formregist',
        	'slug' => 'Formregist'
        	
        ]);

        Category::create([

        	'name' => 'Private',
        	'slug' => 'Private'
        	
        ]);

        Post::factory(20)->create();

        /*Post::create([

        	'title' => 'Judul 1',
        	'slug' => 'judul-1',
        	'excerpt' => 'Lorem ipsum dolor sit amet 1',
        	'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
'category_id' => 1,
'user_id' => 1
        ]);

        Post::create([

        	'title' => 'Judul 2',
        	'slug' => 'judul-2',
        	'excerpt' => 'Lorem ipsum dolor sit amet 2',
        	'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
'category_id' => 1,
'user_id' => 1
        ]);

         Post::create([

        	'title' => 'Judul 3',
        	'slug' => 'judul-3',
        	'excerpt' => 'Lorem ipsum dolor sit amet 3',
        	'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
'category_id' => 2,
'user_id' => 1
        ]);

          Post::create([

        	'title' => 'Judul 4',
        	'slug' => 'judul-4',
        	'excerpt' => 'Lorem ipsum dolor sit amet 4',
        	'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
'category_id' => 2,
'user_id' => 2
        ]);*/
    }
}
