<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserRegisterController extends Controller
{
    //
    public function registerForm()
    {
        $users = User::get();
        return view('user.auth.register');
    }

    public function register(Request $request)
    {
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'password' => Hash::make($request->password),
            'confirmNumber' => $request->confirmNumber,
        ]);
        return redirect()->route('index')->with(['success' => 'مرحبا ' ]);
    }

    public function confirmNumberIndex()
    {
        // $confirmNumber = Auth::user()->confirmNumber;
        return view('user.pages.alerts.confirm');
    }

    public function confirmNumberupdate(Request $request)
    {
        $confirmNumber = User::find(auth()->user()->id);
        $confirmNumber->update([
            'confirmNumber' => $request->confirmNumber,
        ]);
        return redirect()->route('index')->with(['success' => 'تم الارسال بنجاح ' ]);
    }
}
