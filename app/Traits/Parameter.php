<?php

namespace App\Traits;

use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Request;

trait Parameter
{
    protected $user = null;

    protected $perPage = 15;

    public function __construct()
    {
        $user = json_decode(Cache::get(md5(Request::header('Authorization'))));
        $this->user = (object)$user->content;

        if(Request::get('per_page'))
        {
            $this->perPage = Request::get('per_page');
        }
    }
}