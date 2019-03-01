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
                <div class="col-xl-6 col-lg-6">
                    <div class="img-fluid mb-3 mb-lg-0">
                        {{--<iframe width="100%" height="300px" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=daalakkersweg+2.96&key=AIzaSyAEBiBb3bt-BPv07wGskZaTHcwSIk97xUg" allowfullscreen></iframe>--}}
                        <div style="width: 100%">
                            <iframe width="100%" height="300" src="https://maps.google.com/maps?width=100%&height=300&hl=nl&q=Daalakkersweg%202-96+(Alpha%20Zorg)&ie=UTF8&t=&z=16&iwloc=B&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                        </div>
                    </div>
                    <img  src="{!! Voyager::image($page->image) !!}" alt="">
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
                    <div class="bg-black h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto">
                                <h4 class="text-white">Contactformulier</h4>
                                <hr class="d-none d-lg-block mb-0 mr-0">


                                <br>

                                <form>
                                    <div class="form-group">
                                        <label for="">Naam *</label>
                                        <input type="text" class="form-control" name="naam" id="" placeholder="Uw voornaam">
                                    </div>
                                    <div class="form-group">
                                        <label for="">E-mail Adres *</label>
                                        <input type="email" class="form-control" name="email" id="" placeholder="Uw e-mail adres">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Onderwerp *</label>
                                        <input type="text" class="form-control" name="onderwerp" id="" placeholder="Waar gaat het over?">
                                    </div>

                                    <div class="form-group">
                                        <label for="">Bericht/Opmerking *</label>
                                        <textarea class="form-control" name="bericht" rows="3"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Versturen</button>
                                </form>

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

    input,
    textarea{
        /*border: no;*/
        border-radius: 0px !important;
        padding: 15px 10px !important;
    }
</style>
@endpush

