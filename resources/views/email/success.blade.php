@component('mail::message')
Kliento vardas:<h1> {{ $test['name'] }} </h1>
Kliento el.p:<h3> {{$test['email']}} </h3>
Kliento tel.Nr:<h3> {{$test['tel']}} </h3>
Kliento klausimas:
<p> {{$test['text']}} </p>
@endcomponent