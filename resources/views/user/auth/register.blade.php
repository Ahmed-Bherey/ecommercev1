@extends('user.layouts.app')

@section('content')
<div class="login-box">
</div>
<!-- /.login-box -->
<div class="hold-transition login-page">
    <div class="container">
        <div class="row signup-container align-items-center">
            <main class="col-12  col-md-6  d-flex flex-column align-items-center">
                <h1 class="heading-primary"> تسجيل الدخول
                </h1>
                <p class="text-mute mt-3">أدخل بيانات الاعتماد الخاصة بك للوصول إلى حسابك.</p>
                <div class="login-wrapper">
                    <div class="line-breaker">
                        <span class="line"></span>
                        <span class="line"></span>
                    </div>
                </div>
                @include('admin.layouts.alerts.success')
                @include('admin.layouts.alerts.error')
                <form action="{{ route('register') }}" method="post" class="signup-form">
                    @csrf
                    <label class="inp mb-4">
                        <input type="text" class="input-text" placeholder="&nbsp;" name="name">
                        <span class="label">الاسم</span>
                        <span class="input-icon"><i class="fa-solid fa-envelope"></i></span>
                    </label>
                    <label class="inp mb-4">
                        <input type="email" class="input-text" placeholder="&nbsp;" name="email">
                        <span class="label">البريد الإلكتروني</span>
                        <span class="input-icon"><i class="fa-solid fa-envelope"></i></span>
                    </label>
                    <label class="inp mb-4">
                        <input type="number" class="input-text" placeholder="&nbsp;" name="phone">
                        <span class="label">تليفون</span>
                        <span class="input-icon"><i class="fa-solid fa-envelope"></i></span>
                    </label>
                    <label class="inp mb-4">
                        <input type="text" class="input-text" placeholder="&nbsp;" name="address">
                        <span class="label">العنوان</span>
                        <span class="input-icon"><i class="fa-solid fa-envelope"></i></span>
                    </label>
                    <label class="inp mb-4">
                        <input type="text" class="input-text" placeholder="&nbsp;" name="confirmNumber">
                        <span class="label">رقم التحويل</span>
                        <span class="input-icon"><i class="fa-solid fa-envelope"></i></span>
                    </label>
                    <label class="inp mt-4">
                        <input type="password" class="input-text" placeholder="&nbsp;" id="password" name="password">
                        <span class="label">كلمة المرور</span>
                        <span class="input-icon input-icon-password" data-password><i
                                class="fa-solid fa-eye"></i></span>
                    </label>
                    <button class="btn btn-login " type="submit">تسجيل</button>
                </form>
                {{-- <p class="text-mute"> <a href="$">هل نسيت كلمة المرور؟</a></p> --}}
            </main>
            <div class="col-12  col-md-6 ">
                <img src="{{ asset('public/admin/dist/img/nagez-final-22.png') }}" alt="nagez" title="nagez"
                    class="w-100">
            </div>
        </div>
    </div>
</div>
@endsection
