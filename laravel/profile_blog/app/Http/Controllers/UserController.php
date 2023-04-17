<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    public function index()
    {
        return view('login');
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
    }

    public function update(Request $request, $id)
    {
    }

    public function destroy($id)
    {
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required'],
            'password' => ['required'],
        ]);

        $user = User::where('email', $credentials['email'])->first();

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            Session::flash('status', 'success');
            Session::flash('message', 'Selamat anda berhasil login sebagai admin!');

            return redirect()->intended('/home');
        } else {
            return back();
        }
    }

  public function logout()
  {
      if (Auth::logout()) {
          session()->invalidate();
          session()->regenerateToken();
      }

      return redirect('/');
  }
}
