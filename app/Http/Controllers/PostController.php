<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    //use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function index()
    {

    return view('posts',[

    	"title" => "Post",
    	"posts" => Post::all()
		]);
    }
    public function show(Post $post)
    {

	return view('post', [
		"title" => "Single Post",
		"post" => $post
	]);
    }
}
