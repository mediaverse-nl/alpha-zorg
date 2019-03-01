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
                    <img class="img-fluid mb-3 mb-lg-0" src="{!!  $page->image == '' ? Voyager::image(setting('site.default')) : Voyager::image($page->image ) !!}" alt="">
                </div>
                <div class="col-xl-7 col-lg-7">
                    <div class="featured-text text-center text-lg-left">
                        <h4>Welkom bij Alpha Zorg & Advies</h4>
                        <p class="text-black-50 mb-0">Alpha Zorg & Advies biedt zorg en advies in de vorm van ambulante begeleiding en woonbegeleiding aan jongeren vanaf 17 jaar, die door gedrags- en/of ontwikkelingsstoornis ondersteuning nodig hebben in hun dagelijks leven. Wij bieden begeleiding in één van onze woningen of in eigen woonomgeving.
                            Hiernaast bieden wij ook ondersteuning aan ouders omtrent de zorg van hun kind,dit in het kader van de jeugdwet.</p>
                    </div>
                </div>
                <div class="col-xl-12 col-lg-12">
                    <br>
                    <br>
                    <p class="text-black-50">
                        Bij ons staat de jongere centraal, want iedereen is uniek en verdient daarom ook een unieke aanpak.
                        Dit doen we door een begeleidingstraject te bieden waarbij de componenten:
                        Aandacht, Liefde, Praktiseren, Hervormen en Aansturing een basis zullen vormen.Hierover vertellen wij meer bij het kopje:Organisatie.
                        Wij stemmen af op uw wensen en de mogelijkheden die wij te bieden hebben. Ieder mens is waardevol en verdient een oprechte en eerlijke kans om te groeien en zich verder te ontplooien.
                        <br><br>
                        Als professional staan wij voor u klaar om u te adviseren, ondersteunen en begeleiden naar een leven met perspectief.
                        <br><br>
                        <b> Samen staan wij sterk. Een helpende hand richting een betere morgen!</b>
                    </p>
                </div>
            </div>

            <!-- Project One Row -->
            <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                <div class="col-lg-6">
                    <img class="img-fluid" src="{!!  $page->image == '' ? Voyager::image(setting('site.default')) : Voyager::image($page->image ) !!}" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-left">
                                <h4 class="text-white">Ambulante Begeleiding</h4>
                                <p class="mb-0 text-white-50">An example of where you can put an image of a project, or anything else, along with a description.</p>
                                <hr class="d-none d-lg-block mb-0 ml-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project Two Row -->
            <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                <div class="col-lg-6">
                    <img class="img-fluid" src="{!! Voyager::image(setting('site.default')) !!}" alt="">
                </div>
                <div class="col-lg-6 order-lg-first">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-right">
                                <h4 class="text-white">Woonbegeleiding</h4>
                                <p class="mb-0 text-white-50">Another example of a project with its respective description. These sections work well responsively as well, try this theme on a small screen!</p>
                                <hr class="d-none d-lg-block mb-0 mr-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Project Two Row -->
            <div class="row justify-content-center no-gutters">
                <div class="col-lg-6">
                    <img class="img-fluid" src="{!!  $page->image == '' ? Voyager::image(setting('site.default')) : Voyager::image($page->image ) !!}" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="bg-black text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-left">
                                <h4 class="text-white">Thuiszorg en Advies</h4>
                                <p class="mb-0 text-white-50">An example of where you can put an image of a project, or anything else, along with a description.</p>
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

