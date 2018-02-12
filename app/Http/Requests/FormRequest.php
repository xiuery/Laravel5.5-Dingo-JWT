<?php

namespace App\Http\Requests;

use Dingo\Api\Http\FormRequest as DingoFormRequest;

class FormRequest extends DingoFormRequest
{
    public function authorize()
    {
        return true;
    }
}
