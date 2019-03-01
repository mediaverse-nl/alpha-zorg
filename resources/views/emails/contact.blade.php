@component('mail::message')

    Beste {!! $request->naam !!},

    Bedankt voor uw bericht, we zullen zo spoedig mogelijk contact met u opnemen.

    Kopie van uw bericht;
    {!! $request->bericht !!}


    Met vriendelijke groet,

    Terence

    Alpha Zorg & Advies
    Daalakkersweg 2-96
    5641 JA Eindhoven
    Tel: 040-420 00 32

@endcomponent