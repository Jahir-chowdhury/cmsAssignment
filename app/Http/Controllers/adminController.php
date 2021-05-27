<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class adminController extends Controller
{
    public function createCourse()
    {
        return view('frontEnd.home.createCourse');
    }
}