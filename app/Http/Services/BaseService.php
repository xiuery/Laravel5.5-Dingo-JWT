<?php

namespace App\Http\Services;

use App\Traits\Parameter;
use Illuminate\Database\Eloquent\Model;

class BaseService
{
    use Parameter;

    public $appID = 1;

    public $addUser = true;

    public function create(Model $model, $attribute)
    {
        if($this->addUser)
        {
            $attribute['user_id']   = $this->user->id;
            $attribute['user_name'] = $this->user->name;
        }

        return $model->create($attribute);
    }
}