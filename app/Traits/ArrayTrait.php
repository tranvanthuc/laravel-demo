<?php

namespace App\Traits;

trait ArrayTrait
{
    public function getLastItem($array)
    {
        return array_last($array);
    }
}
