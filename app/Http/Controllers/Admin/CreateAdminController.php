<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin\Admin;
use Illuminate\Http\Request;
use App\Models\Admin\CreateAdmin;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class CreateAdminController extends Controller
{
    //
    public function create(){
        $admins = Admin::get();
        return view('admin.pages.createAdmin.create' , compact('admins'));
    }

    public function store(Request $request){
        $active = 0;
        if($request->active == 1){
            $active = 1;
        }
        Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'password' => Hash::make($request->password),
            'active' => $active,
        ]);
        return redirect()->back()->with(['success' => 'تمت الاضافة بنجاح']);
    }

    public function edit($id){
        $admin = Admin::findOrFail($id);
        return view('admin.pages.createAdmin.edit' , compact('admin'));
    }

    public function update(Request $request, $id){
        $admin = Admin::findOrFail($id);
        $active = 0;
        if($request->active == 1){
            $active = 1;
        }
        $password = Hash::make( $request->password);
        if($request->password == ""){
            $password = $request->oldPassword;
        }
        $admin->update([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'password' => $password,
            'active' => $active,
        ]);
        return redirect()->route('createAdmin.create')->with(['success' => 'تمت التحديث بنجاح']);
    }

    public function destroy($id){
        $admin = Admin::findOrFail($id);
        $admin->delete();
        return redirect()->back()->with(['success' => 'تمت الحذف بنجاح']);
    }
}
