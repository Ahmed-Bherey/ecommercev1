<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function index(){
        $users = User::get();
        return view('admin.pages.users.index' , compact('users'));
    }

    public function edit($id){
        $user = User::findOrFail($id);
        return view('admin.pages.users.edit' , compact('user'));
    }

    public function update(Request $request, $id){
        $user = User::findOrFail($id);
        $block = 0;
        if($request->block == 1){
            $block = 1;
        }

        $active = 0;
        if($request->active == 1){
            $active = 1;
        }

        $password = Hash::make( $request->password);
        if($request->password == ""){
            $password = $request->oldPassword;
        }
        $user->update([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'password' => $request->password,
            'active' => $request->active,
            'confirmNumber' => $request->confirmNumber,
            'active' => $active,
            'block' => $block,
            'notes' => $request->notes,
            'password' => $password,
        ]);
        return redirect()->route('user.index')->with(['success' => 'تم التحديث بنجاح']);
    }

    public function destroy($id){
        $user = User::findOrFail($id);
        $user->delete();
        return redirect()->back()->with(['success' => 'تم الحذف بنجاح']);
    }

    public function blockList(){
        $users = User::where('block',1)->get();
        return view('admin.pages.users.list' , compact('users'));
    }
}
