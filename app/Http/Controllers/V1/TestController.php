<?php

namespace App\Http\Controllers\V1;

use App\Services\ArticleService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TestController extends Controller
{
    /** @var ArticleService $articleService */
    protected $articleService;

    public function __construct()
    {
        $this->articleService = app(ArticleService::class);
    }

    public function demo1()
    {
        return " This is demo1 function in Version1";
    }

    public function demo2()
    {
        return " This is demo2 function in Version1";
    }

    public function getLastArticle()
    {
        return $this->articleService->getLastArticle();
    }
}
