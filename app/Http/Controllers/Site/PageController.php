<?php

namespace App\Http\Controllers\Site;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Page;

class PageController extends Controller
{
    public function show($slug)
    {
        $page = Page::findBySlug($slug);

        if ($page == null){
            return abort(404);
        }

        return view('site.page.show')
            ->with('page', $page);
    }
}
