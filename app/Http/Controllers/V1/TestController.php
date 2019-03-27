<?php

namespace App\Http\Controllers\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TestController extends Controller
{
    public function demo1()
    {
        return " This is demo1 function in Version1";
    }

    public function demo2()
    {
        return " This is demo2 function in Version1";
    }
}
