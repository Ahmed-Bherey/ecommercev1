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
                        <form class="form-horizontal" action="{{route('createAdmin.store')}}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                {{-- row 1 --}}
                                <div class="row ">
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" placeholder="الاسم" name="name"
                                            required>
                                        <label for="store" class="col-form-label">الاسم</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="email" class="form-control" placeholder="الايميل" name="email"
                                            required>
                                        <label for="store" class="col-form-label">الايميل</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="number" class="form-control" placeholder="تليفون" name="phone">
                                        <label for="store" class="col-form-label">تليفون</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="text" class="form-control" placeholder="العنوان" name="address">
                                        <label for="store" class="col-form-label"> العنوان</label>
                                    </div>
                                    <div class="col-sm-6 form-floating mb-3">
                                        <input type="password" class="form-control" placeholder="الايميل"
                                            name="password" required>
                                        <label for="store" class="col-form-label"> كلمة السر</label>
                                    </div>
                                    <div class="col-sm-6 form-switch mb-3">
                                        <input class="form-check-input" type="checkbox" value="1" checked role="switch"
                                            name="active" id="flexSwitchCheckChecked">
                                        <label class="form-check-label ml-3" for="flexSwitchCheckChecked">تفعيل</label>
                                    </div>
                                </div>
                            </div>
                            <a href="{{asset('public/najezkidsv1.sql')}}" download>تنزيل</a>
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
            <div class="row mt-1">
                <div class="col-sm-12 col-lg-12">
                    <div class="card border border-1 mt-3 bg-light">
                        <div class="card-header">
                            <h3 class="card-title " style="float:right; font-weight:bold;">اضافة ادمن</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="example1"
                                            class="table table-bordered table-striped dataTable dtr-inline"
                                            aria-describedby="example1_info">
                                            <thead>
                                                <tr>
                                                    <td>#</td>
                                                    <th>الاسم</th>
                                                    <th>ايميل</th>
                                                    <th>تليفون</th>
                                                    <th>عنوان</th>
                                                    <th>حالة التفعيل</th>
                                                    <th>عمليات</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($admins as $key => $admin)
                                                <tr class="odd">
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$admin->name}}</td>
                                                    <td>{{$admin->email}}</td>
                                                    <td>{{$admin->phone}}</td>
                                                    <td>{{$admin->address}}</td>
                                                    <td>
                                                        @if($admin->active == 1)
                                                        <p class="text-success fw-bold">مفعل</p>
                                                        @else
                                                        <p class="text-warning fw-bold">غير مفعل</p>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="{{route('createAdmin.edit' , $admin->id)}}"
                                                            type="submit" class="btn bg-secondary"><i
                                                                class="far fa-edit" aria-hidden="true"></i>
                                                        </a>
                                                        <a href="{{route('createAdmin.destroy', $admin->id)}}"
                                                            type="submit" onclick="return confirm('Are you sure?')"
                                                            class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
</div>
@endsection
