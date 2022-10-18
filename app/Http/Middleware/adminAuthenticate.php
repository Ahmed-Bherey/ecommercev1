<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class adminAuthenticate
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(auth('admin')->check() == false){
            return redirect()->route('admin.login.form')->with(['error' => '😕  ' . 'من فضلك ادخل بياناتك اولا']);
        }
        return $next($request);
    }
}
