@extends('layouts.site')

@section('meta_title', $page->title)
@section('meta_description', $page->description)

@section('content')

    <!-- Header -->
    @include('components.page-banner')

    <section id="projects" class="projects-section bg-light">
        <div class="container">

            <!-- Featured Project Row -->
            <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                <div class="col-xl-5 col-lg-5">
                    <img class="img-fluid mb-3 mb-lg-0" src="{!! $page->image == '' ? Voyager::image(setting('site.default')) : Voyager::image($page->image ) !!}" alt="">
                </div>
                <div class="col-xl-7 col-lg-7">
                    <div class="featured-text text-center text-lg-left">
                        <h4>Welkom bij Alpha Zorg & Advies</h4>
                        <p class="text-black-50 mb-0">{!! $page->excerpt !!}</p>
                    </div>
                </div>
                <div class="col-lg-1 col-xl-1">
                </div>
                <div class="col-xl-10 col-lg-10 col-md-12">
                    <br>
                    <br>
                    <div class="featured-text text-center text-lg-left">
                        <p class="text-black-50">
                            {!! $page->body !!}
                        </p>
                    </div>
                </div>
            </div>

            <!-- Project One Row -->
            <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                <div class="col-lg-6">
                    <img class="img-fluid" src="{!! setting('home.ambulant-img') == null ? Voyager::image(setting('site.default')) : Voyager::image(setting('home.ambulant-img')) !!}" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-left">
                                <h4 class="text-white">Ambulante Begeleiding</h4>
                                <p class="mb-0 text-white-50">{!! setting('home.ambulant') !!}</p>
                                <hr class="d-none d-lg-block mb-0 ml-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project Two Row -->
            <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                <div class="col-lg-6">
                    <img class="img-fluid" src="{!! setting('home.thuiszorg-img') == null ? Voyager::image(setting('site.default')) : Voyager::image(setting('home.thuiszorg-img')) !!}" alt="">
                </div>
                <div class="col-lg-6 order-lg-first">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-right">
                                <h4 class="text-white">Woonbegeleiding</h4>
                                <p class="mb-0 text-white-50">{!! setting('home.thuiszorg') !!}</p>
                                <hr class="d-none d-lg-block mb-0 mr-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project Two Row -->
            <div class="row justify-content-center no-gutters">
                <div class="col-lg-6">
                    <img class="img-fluid" src="{!! setting('home.woonbegeleiding-img') == null ? Voyager::image(setting('site.default')) : Voyager::image(setting('home.woonbegeleiding-img')) !!}" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-left">
                                <h4 class="text-white">Thuiszorg en Advies</h4>
                                <p class="mb-0 text-white-50">{!! setting('home.woonbegeleiding') !!}</p>
                                <hr class="d-none d-lg-block mb-0 ml-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
@stop

@push('css')
    <style>

    </style>
@endpush

