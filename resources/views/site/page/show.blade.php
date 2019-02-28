@extends('layouts.site')

@section('meta_title', $page->title)
@section('meta_description', $page->description)

@section('content')

    <!-- Header -->
    <header class="masthead" style="">
        <div class="container d-flex h-100 align-items-center">
            <div class="mx-auto text-center">
                <h1 class="mx-auto my-0 text-uppercase">Alpha zorg</h1>
                <h2 class="text-white-50 mx-auto mt-2 mb-5">Uw leven in perspectief</h2>
                <a href="#about" class="btn btn-primary js-scroll-trigger">Aanmelden</a>
            </div>
        </div>
    </header>

    <section id="projects" class="projects-section bg-light">
        <div class="container">

            <!-- Featured Project Row -->
            <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                <div class="col-xl-6 col-lg-6">
                    <img class="img-fluid mb-3 mb-lg-0" src="{!! Voyager::image($page->image) !!}" alt="">
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="featured-text text-center text-lg-left">
                        <h4>{!! $page->title !!}</h4>
                        <p class="text-black-50 mb-0">{!! $page->excerpt !!}</p>
                    </div>
                </div>
            </div>

            <!-- Project Two Row -->
            <div class="row justify-content-center no-gutters">
                <div class="col-lg-12 order-lg-first">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-right">
                                {{--<h4 class="text-white">Mountains</h4>--}}
                                <p class="mb-0 text-white-50">{!! $page->body !!}</p>
                                <hr class="d-none d-lg-block mb-0 mr-0">
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
    .masthead {
        position: relative;
        width: 100%;
        height: auto;
        min-height: 35rem;
        padding: 15rem 0;
        /* background: -webkit-gradient(linear,left top,left bottom,from(rgba(22,22,22,.1)),color-stop(75%,rgba(22,22,22,.5)),to(#161616)),url(../img/bg-masthead.jpg); */
        background: linear-gradient(to bottom,rgba(22,22,22,.1) 0,rgba(22,22,22,.5) 75%,#161616 100%),url(/images/test1.jpg) !important;
        background-position: center !important;
        background-repeat: no-repeat !important;
        background-attachment: scroll !important;
        background-size: cover !important;
    }
</style>
@endpush

