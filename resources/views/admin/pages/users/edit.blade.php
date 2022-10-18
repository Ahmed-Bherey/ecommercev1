@extends('admin.layouts.includes.master')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mt-1">
                <div class="col-sm-12 col-lg-12">
                    <div class="card">
                        <div class="card-header header-bg">
                            <h3 class="card-title header-title">المستخدمين</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        @include('admin.layouts.alerts.success')
                        @include('admin.layouts.alerts.error')
                        <form class="form-horizontal" action="{{route('user.update', $user->id)}}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                {{-- row 1 --}}
                                <div class="row ">
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" value="{{$user->name}}"
                                            placeholder="الاسم" name="name" required>
                                        <label for="store" class="col-form-label">الاسم</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="email" class="form-control" value="{{$user->email}}"
                                            placeholder="الايميل" name="email">
                                        <label for="store" class="col-form-label">الايميل</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" value="{{$user->adderess}}"
                                            placeholder="العنوان" name="adderess">
                                        <label for="store" class="col-form-label"> العنوان</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" value="{{$user->phone}}"
                                            placeholder="تليفون" name="tel">
                                        <label for="store" class="col-form-label">تليفون</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <textarea class="form-control" rows="3" id="notes" placeholder="ملاحظات ..."
                                            name="notes">{{$user->notes}}</textarea>
                                        <label for="notes" class="col-form-label">ملاحظات</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="password" class="form-control"
                                            placeholder="كلمة المرور" name="password">
                                            <input type="password" class="form-control" value="{{$user->password}}"
                                            placeholder="كلمة المرور" name="oldPassword" hidden>
                                        <label for="store" class="col-form-label"> كلمة المرور</label>
                                    </div>
                                    <div class="col-sm-3 form-switch mb-3">
                                        <input class="form-check-input" type="checkbox" value="1" @if($user->active ==
                                        1)
                                        checked @endif role="switch" name="active"
                                        id="flexSwitchCheckChecked">
                                        <label class="form-check-label ml-3" for="flexSwitchCheckChecked">تفعيل</label>
                                    </div>
                                    <div class="col-sm-3 form-switch mb-3">
                                        <input class="form-check-input" type="checkbox" value="1" @if($user->block == 1)
                                        checked @endif role="switch" name="block"
                                        id="flexSwitchCheckChecked">
                                        <label class="form-check-label ml-3" for="flexSwitchCheckChecked">حظر</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" value="{{$user->confirmNumber}}"
                                            placeholder="رقم التأكيد" name="tel">
                                        <label for="store" class="col-form-label">رقم التأكيد</label>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" class="btn bg-success-2 mr-3">
                                    <i class="fa fa-check text-light"></i>
                                </button>
                                <button class="btn bg-secondary" type="reset">
                                    <i class="fas fa-undo"></i>
                                </button>
                            </div>
                            <!-- /.card-footer -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
