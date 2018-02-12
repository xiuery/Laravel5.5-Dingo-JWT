<?php

use Illuminate\Http\Request;

$api = app('Dingo\Api\Routing\Router');

$api->version('v1', [
    'namespace' => 'App\Http\Controllers\V1',
], function ($api) {

    $api->group([], function ($api) {

    });
});
