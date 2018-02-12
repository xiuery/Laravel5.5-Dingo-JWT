<?php

namespace App\Serializers;

use League\Fractal\Serializer\ArraySerializer;

class CustomerSerializer extends ArraySerializer
{
    /**
     * Serialize a collection.
     */
    public function collection($resourceKey, array $data)
    {
        return [$resourceKey ?: 'content' => $data];
    }

    /**
     * Serialize an item.
     */
    public function item($resourceKey, array $data)
    {
        return ['content' => $data];
    }
}
