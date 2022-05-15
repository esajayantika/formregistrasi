<?php

use Illuminate\Support\Facades\Route;
use App\Models\Post;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Models\Category;
use App\Models\User;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('Home', ["title" => "Home"]);
});

Route::get('/about',function () {
    return view('About',[
    	"title" => "About",
    	"name"=>"I Putu Esa Jayantika",
    	"email"=>"esajayantika@gmail.com",
    	"image"=>"DSC_0032_Esa 3x4.jpg"
]);
});



Route::get('/blog', [PostController::class,'index']);

//single post

Route::get('posts/{post:slug}',[PostController::class,'show']);
Route::get('/login',[LoginController::class,'index']);
Route::get('/register',[RegisterController::class,'index']);
Route::get('/categories/{category:slug}', function (Category $category)
{
	return view('category', [
		'title'=> $category->name,
		'posts'=> $category->posts,
		'category'=> $category->name
	]);
});
Route::get('/categories', function ()
{
	return view('categories', [
		'title'=> 'Post Categories',
		'categories'=> Category::all()
	]);
});

Route::get('/authors/{author:username}', function (User $author)
{
	return view('posts', [
		'title'=> 'User Posts',
		'posts'=> $author->posts,
	]);
});