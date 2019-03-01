<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        {{--<meta http-equiv="X-UA-Compatible" content="IE=edge">--}}
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>{!! setting('site.title') !!} - @yield('meta_title')</title>

        <meta name="description" content="@yield('meta_description')">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <!-- Styles -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link href="{{ asset('/css/grayscale.min.css') }}" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

        @stack('css')

        <style>
            .text-white-50 {
                color: rgba(255,255,255,.5)!important;
            }
            .project-text{
                color: rgba(255,255,255,.5)!important;
            }
            .project-text h4{
                color: #fff!important;
            }

            .masthead {
                position: relative;
                width: 100%;
                height: auto;
                min-height: 35rem;
                padding: 15rem 0;
                /* background: -webkit-gradient(linear,left top,left bottom,from(rgba(22,22,22,.1)),color-stop(75%,rgba(22,22,22,.5)),to(#161616)),url(../img/bg-masthead.jpg); */
                background: linear-gradient(to bottom,rgba(22,22,22,.1) 0,rgba(22,22,22,.5) 75%,#161616 100%),url({!! Voyager::image(setting('site.banner')) !!}) !important;
                background-position: center !important;
                background-repeat: no-repeat !important;
                background-attachment: scroll !important;
                background-size: cover !important;
            }
        </style>

    </head>
    <body id="page-top">

        @include('layouts.includes.menu')

        @yield('content')

        @include('layouts.includes.footer')

        <!-- Scripts -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="/js/grayscale.min.js"></script>

        @stack('js')

    </body>
</html>
