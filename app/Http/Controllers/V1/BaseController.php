<?php

namespace App\Http\Controllers\V1;

use App\Http\Controllers\Controller;

class BaseController extends Controller
{
    public function init($request)
    {
        $this->request = $request;
    }
}
