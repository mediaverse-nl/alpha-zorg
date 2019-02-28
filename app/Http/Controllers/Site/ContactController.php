<?php

namespace App\Http\Controllers\Site;

use App\Page;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page = Page::findBySlug('contact');

        return view('site.contact.index')
            ->with('page', $page);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        ontvang data van form
//        verwerk data van form
//        verzend data naar email

        return redirect()->back();
    }
}
