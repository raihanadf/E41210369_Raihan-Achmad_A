<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;

class BlogController extends Controller
{
    //
    public function home(): View|Factory
    {
        return view('dashboard.home');
    }

    public function about(): View|Factory
    {
        return view('dashboard.about');
    }

    public function blog(): View|Factory
    {
        $blog = Blog::all();

        return view('dashboard.blog', ['blogList' => $blog]);
    }
}
