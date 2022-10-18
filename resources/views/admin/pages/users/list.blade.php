@extends('admin.layouts.includes.master')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mt-1">
                <div class="col-sm-12 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">قائمة المحظورين</h3>
                        </div>
                        <!-- /.card-header -->
                        @include('admin.layouts.alerts.success')
                        @include('admin.layouts.alerts.error')
                        @include('admin.layouts.alerts.confirm')
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
                                                    <th class="sorting" tabindex="0" aria-controls="example1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Browser: activate to sort column ascending">
                                                        الاسم</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Browser: activate to sort column ascending">
                                                        البريد الالكترونى</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Browser: activate to sort column ascending">
                                                        العنوان</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Browser: activate to sort column ascending">
                                                        التليفون</th>
                                                        <td>رقم التأكيد</td>
                                                    <td>الحالة</td>
                                                    <td>الحظر</td>
                                                    <td>ملاحظات</td>
                                                    <th class="sorting" tabindex="0" aria-controls="example1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Platform(s): activate to sort column ascending">
                                                        عمليات</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($users as $key => $user)
                                                <tr class="odd">
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$user->name}}</td>
                                                    <td>{{$user->email}}</td>
                                                    <td>{{$user->address}}</td>
                                                    <td>{{$user->phone}}</td>
                                                    <td><p class="text-primary">{{$user->confirmNumber}}</p></td>
                                                    <td>
                                                        @if($user->active == 1)
                                                        <p class="text-success fw-bold">مفعل</p>
                                                        @else
                                                        <p class="text-warning fw-bold">غير مفعل</p>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if($user->block == 1)
                                                    <p class="text-danger fw-bold">محظور</p>
                                                    @endif
                                                    </td>
                                                    <td>{{$user->notes}}</td>
                                                    <td>
                                                        <a href="{{ route('user.edit', $user->id) }}" type="submit"
                                                            class="btn bg-secondary"><i class="far fa-edit"
                                                                aria-hidden="true"></i></a>
                                                        <a href="{{ route('user.destroy', $user->id) }}" type="submit"
                                                            onclick="return confirm('Are you sure?')"
                                                            class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- /.content-header -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
