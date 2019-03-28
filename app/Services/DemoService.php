<?php

namespace App\Services;

use App\Repositories\ArticleRepository;

class DemoService
{
    /** @var ArticleRepository $articleRepo */
    protected $articleRepo;

    public function __construct()
    {
        $this->articleRepo = app(ArticleRepository::class);
    }

    public function test()
    {
        return true;
    }
}
