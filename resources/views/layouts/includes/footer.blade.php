<!-- Footer -->
<section class="contact-section bg-black">
    <div class="container">

        <div class="row">

            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Adres</h4>
                        <hr class="my-4">
                        <div class="small text-black-50">{!! setting('site.adres') !!}</div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-envelope text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Email</h4>
                        <hr class="my-4">
                        <div class="small text-black-50">
                            <a href="mailto:{!! setting('site.email') !!}">{!! setting('site.email') !!}</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-mobile-alt text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Telefoon</h4>
                        <hr class="my-4">
                        <div class="small text-black-50"><a href="tel:{!! setting('site.telefoon') !!}">{!! setting('site.telefoon') !!}</a></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="social d-flex justify-content-center">
            <a href="{!! setting('site.twiiter') !!}" class="mx-2">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="{!! setting('site.facebook') !!}" class="mx-2">
                <i class="fab fa-facebook-f"></i>
            </a>
        </div>

    </div>
</section>

<footer class="bg-black small text-center text-white-50">
    <div class="container">
        Copyright © alpha-zorg.nl  {!! date("Y") !!}
    </div>
</footer>
