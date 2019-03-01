<?php

namespace App\Http\Controllers\Site;

use App\Mail\ContactFormMail;
use App\Page;
use App\Http\Controllers\Controller;
use App\Http\Requests\ContactStoreRequest;
use Illuminate\Support\Facades\Mail;

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
    public function store(ContactStoreRequest $request)
    {

        Mail::to($request->email)
            ->send(new ContactFormMail($request));

        return redirect()->back();
    }
}
