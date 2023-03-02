<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    //
    public function home()
    {
        return view('dashboard.home');
    }

    public function about()
    {
        return view('dashboard.about');
    }

    public function blog()
    {
        $blog = Blog::all();

        return view('dashboard.blog', ['blogList' => $blog]);
    }
}
