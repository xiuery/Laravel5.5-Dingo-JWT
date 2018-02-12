<?php

namespace App\Traits;

use League\Fractal\Manager;
use Dingo\Api\Routing\Helpers;
use Illuminate\Support\Collection;
use League\Fractal\TransformerAbstract;
use App\Serializers\CustomerSerializer;
use Illuminate\Contracts\Pagination\Paginator;

trait Responder
{
    use Helpers;

    public function responseCollection(Collection $collection, TransformerAbstract $transformer)
    {
        return $this->response->collection($collection, $transformer, [], function ($resource, Manager $fractal) {
            $fractal->setSerializer(new CustomerSerializer());
        });
    }

    public function responseItem($item, TransformerAbstract $transformer)
    {
        return $this->response->item($item, $transformer, [], function ($resource, Manager $fractal) {
            $fractal->setSerializer(new CustomerSerializer());
        });
    }

    public function responsePaginate(Paginator $paginator, TransformerAbstract $transformer)
    {
        return $this->response->paginator($paginator, $transformer, [], function ($resource, Manager $fractal) {
            $fractal->setSerializer(new CustomerSerializer());
        });
    }
}