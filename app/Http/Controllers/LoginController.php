<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class LoginController extends Controller
{
    //use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function index()
    {
        return view('login.index',[
            'title'=> 'login'
        ]);

    }
    public function show()
    {


    }
}
