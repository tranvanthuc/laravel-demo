<?php

namespace App\Services;

use App\Repositories\ArticleRepository;
use App\Traits\ArrayTrait;

class ArticleService
{
    use ArrayTrait;
    /** @var ArticleRepository $articleRepo */
    protected $articleRepo;

    /** @var DemoService $demoService */
    protected $demoService;

    public function __construct()
    {
        $this->articleRepo = app(ArticleRepository::class);
        $this->demoService = app(DemoService::class);
    }

    public function getLastArticle()
    {
        echo "Test " . $this->demoService->test();
        $array = $this->articleRepo->all();
        return $this->getLastItem($array);
    }
}
