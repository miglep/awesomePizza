@include('header')

<div class="container">

    <div class="row">

        <div class="col-md-12">

            @yield('content')
            @include ('contentbar')
            @yield('contentbar')

        </div>
      
    </div>


</div>

@include('footer')