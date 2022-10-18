@extends('admin.layouts.includes.master')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <!-- /.row -->
            {{-- start card --}}
            <div class="row mt-1">
                <div class="col-sm-12 col-lg-12">
                    <div class="card">
                        <div class="card-header header-bg">
                            <h3 class="card-title header-title">اضافة ادمن</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        @include('admin.layouts.alerts.success')
                        @include('admin.layouts.alerts.error')
                        <form class="form-horizontal" action="{{route('createAdmin.update', $admin->id)}}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                {{-- row 1 --}}
                                <div class="row ">
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" value="{{$admin->name}}"
                                            placeholder="الاسم" name="name" required>
                                        <label for="store" class="col-form-label">الاسم</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="email" class="form-control" value="{{$admin->email}}"
                                            placeholder="الايميل" name="email" required>
                                        <label for="store" class="col-form-label">الايميل</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="number" class="form-control" value="{{$admin->phone}}"
                                            placeholder="تليفون" name="phone">
                                        <label for="store" class="col-form-label">تليفون</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" value="{{$admin->address}}"
                                            placeholder="العنوان" name="address">
                                        <label for="store" class="col-form-label"> العنوان</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="password" class="form-control" placeholder="كلمة المرور"
                                            name="password">
                                        <input type="password" class="form-control" value="{{$admin->password}}" placeholder="كلمة المرور"
                                            name="oldPassword" hidden>
                                        <label for="store" class="col-form-label">كلمة المرور</label>
                                    </div>
                                    <div class="col-sm-6 form-switch mb-3">
                                        <input class="form-check-input" type="checkbox" value="1" @if($admin->active ==
                                        1) checked @endif role="switch"
                                        name="active" id="flexSwitchCheckChecked">
                                        <label class="form-check-label ml-3" for="flexSwitchCheckChecked">تفعيل</label>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" class="btn bg-success-2 mr-3">
                                    <i class="fa fa-check text-light" aria-hidden="true"></i>
                                </button>
                                <button class="btn bg-secondary" onclick="history.back()" type="submit">
                                    <i class="fas fa-undo"></i>
                                </button>
                            </div>
                            <!-- /.card-footer -->
                        </form>
                    </div>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
</div>
@endsection
