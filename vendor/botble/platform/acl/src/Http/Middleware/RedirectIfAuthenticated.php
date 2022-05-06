<?php

namespace Botble\ACL\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{

    /**
     * Handle an incoming request.
     *
     * @param Request $request
     * @param \Closure $next
     * @param string|null ...$guards
     * @return mixed
     */
    public function handle($request, Closure $next, ...$guards)
    {
        $guards = empty($guards) ? [null] : $guards;
        // dd($request);
        foreach ($guards as $guard) {
            if (Auth::guard($guard)->check()) {
                // dd();
                if(Auth::user()->super_user == 1 || Auth::user()->super_user == 0)
                return redirect(route('dashboard.index'));
                else
                return redirect(route('access.login.post'));
                
            }
        }

        return $next($request);
    }
}
