<?php

namespace App\Http\Controllers\Site;

use App\Page;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class WelcomeController extends Controller
{
    function __invoke()
    {
        $page = Page::findBySlug('/');

        return view('welcome')
            ->with('page', $page);
    }
}
