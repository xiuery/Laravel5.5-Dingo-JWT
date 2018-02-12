<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Cache;

class VerifyToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = $request->header('Authorization');
        if(!$token) {
            abort(401, trans('auth.failed'));
        }
        $client  = new \GuzzleHttp\Client();
        $headers = array('Authorization' => $token);
        try {
            $response = $client->request('GET', config('api.auth_url'),array('headers'=>$headers));
        }
        catch (\GuzzleHttp\Exception\ClientException $exception) {
            $body = $exception->getResponse()->getBody(true);
            $body =  json_decode($body->getContents());
            abort($body->status_code,$body->message);
        }

        Cache::put(md5($token),$response->getBody()->getContents(),3600*24);
        return $next($request);
    }
}
