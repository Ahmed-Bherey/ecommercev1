<?php

namespace App\Http\Controllers\Auth;

use App\Models\Admin\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Session;

class AdminLoginController extends Controller
{
    //
    public function loginForm()
    {
        return view('admin.auth.login');
    }

    public function login(Request $request)
    {
        $active = Admin::where('email',$request->email)->value('active');
        if ($active == 1){
            if (auth()->guard('admin')->attempt([
                'email' => $request->input('email'),
                'password' => $request->input('password'),
            ])) {
                return redirect()->route('dashboard')->with(['success' => 'مرحبا ' ]);
            } else {
                return redirect()->back()->with(['error' => '😕  ' . 'هناك خطا بالبيانات']);
            }
        }else{
            return redirect()->back()->with(['error' => '😡 ' . 'عذرا ليس لديك تصريح']);
        }
    }

    public function logout()
    {
        Auth::guard('admin')->logout();
        Session::forget('yourKeyGoesHere');
        session()->regenerate();
        Artisan::call('cache:clear');
        return redirect()
            ->route('index')
            ->with(['success' => '☹️ ' . 'تم الخروج بنجاح']);
    }
}
