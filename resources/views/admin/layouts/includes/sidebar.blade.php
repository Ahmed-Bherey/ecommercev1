<aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color: rgb(68,67,69)">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
        <img src="{{ asset('public/assets/dist/img/logo1.png') }}" alt="najezedu"
            class=" brand-image img-circle elevation-3">
        <span class="brand-text font-weight-light">ناجز </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{ asset('public/assets/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2"
                    alt="User Image">
            </div>
            <div class="info">
                <a href="" class="d-block">
                    {{-- {{auth()->user()->name_ar}} --}}
                </a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column p-0" data-widget="treeview" role="menu"
                data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
            with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview menu-open">
                    <a href="" class="nav-link bg-origin">
                        <i class="nav-icon fas fa-tachometer-alt "></i>
                        <p>
                            الرئيسيه
                        </p>
                    </a>
                </li>
                <li class="nav-item {{request()->routeIs('educationalYear.create') ? 'menu-is-opening menu-open' : ''}}
                {{request()->routeIs('daycareSettieng.create') ? 'menu-is-opening menu-open' : ''}}
                {{request()->routeIs('user.create') ? 'menu-is-opening menu-open' : ''}}
                {{request()->routeIs('leavel.create') ? 'menu-is-opening menu-open' : ''}}
                {{request()->routeIs('classroom.create') ? 'menu-is-opening menu-open' : ''}}
                {{request()->routeIs('educationalExpenses.create') ? 'menu-is-opening menu-open' : ''}}

                    {{request()->routeIs('generalExpensese.create') ? 'menu-is-opening menu-open' : ''}}">
                    <a href="#" class="nav-link">
                        <i class="fas fa-cogs text-green"></i>
                        <p>
                            الاعدادات العامة
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li
                            class="nav-item @if(request()->routeIs('educationalYear.create') ? 'menu-is-opening menu-open' : '') bg-success @endif">
                            <a href="{{route('user.index')}}" class="nav-link">
                                <i class="far fa-circle nav-icon green-1"></i>
                                <p>المستخدمين</p>
                            </a>
                        </li>
                        <li
                            class="nav-item">
                            <a href="{{route('user.list')}}" class="nav-link">
                                <i class="far fa-circle nav-icon green-1"></i>
                                <p>قائمة المحظورين</p>
                            </a>
                        </li>
                        <li
                            class="nav-item">
                            <a href="{{route('createAdmin.create')}}" class="nav-link">
                                <i class="far fa-circle nav-icon green-1"></i>
                                <p>اضافة ادمن</p>
                            </a>
                        </li>
                        {{-- <li class="nav-item {{request()->routeIs('user.create') ? 'menu-is-opening menu-open' : ''}}">
                            <a href="#" class="nav-link">
                                <i class="fas fa-cogs text-green"></i>
                                <p>
                                    المستخدمين
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li
                                    class="nav-item @if(request()->routeIs('user.create') ? 'menu-is-opening menu-open' : '') bg-success @endif">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon green-1"></i>
                                        <p>اضافة مستخدم</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon green-1"></i>
                                        <p>صلاحيات المستخدمين </p>
                                    </a>
                                </li>
                            </ul>
                        </li> --}}
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
