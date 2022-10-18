<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Session;

class UserLoginController extends Controller
{
    //
    public function confirm()
    {
        return view('user.pages.confirm');
    }

    public function loginForm()
    {
        return view('user.auth.login');
    }

    public function login(Request $request)
    {
        $active = User::where('email',$request->email)->value('active');
            if (auth()->guard('web')->attempt([
                'email' => $request->input('email'),
                'password' => $request->input('password'),
            ])) {
                if ($active == 1){
                    return redirect()->route('index')->with(['success' => 'مرحبا ' . Auth::user()->name . ' 😇']);
                }else{
                    return redirect()->route('index')->with(['confirm']);
                }
            } else {
                return redirect()->back()->with(['error' => '😕  ' . 'هناك خطا بالبيانات']);
            }
    }

    public function logout()
    {
        Auth::logout();
        Session::forget('yourKeyGoesHere');
        session()->regenerate();
        Artisan::call('cache:clear');
        return redirect()
            ->route('index')
            ->with(['success' => '☹️ ' . 'تم الخروج بنجاح']);
    }
}
