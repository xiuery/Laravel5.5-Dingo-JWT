<?php

namespace App\Listeners;

use Illuminate\Support\Facades\Log;

class QueryListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Events $event
     * @return void
     */
    public function handle($event)
    {
        if (env('APP_ENV', 'production') == 'local') {
            $params = $event->bindings;
            $sql = $event->sql;
            foreach ($params as $index => $param) {
                if ($param instanceof DateTime) {
                    $params[$index] = $param->format('Y-m-d H:i:s');
                }
            }
            $sql = str_replace("?", "'%s'", $sql);
            array_unshift($params, $sql);
            Log::info(call_user_func_array('sprintf', $params));
        }
    }
}
