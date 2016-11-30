<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;

class VerifyJwtToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = User::where('token', $request->header('token'))->first();

        if ($user) {
            $request->attributes->add(['loggedUser' => $user]);
            return $next($request);
        } else {
            return response()->json(['expired_token' => [trans('auth.expired_token')]], 401);
        }
    }
}
