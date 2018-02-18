@section('title')
    {{ $orders->title }}
@stop
 
@include('header')
 
<div class="container">
 
    <div class="row">
        <h1>{{ $orders->title }}</h1>
    </div>
 
    <div class="row">
 
        <div class="col-md-12">
            Count: <b>{{ $orders->count }}</b>
 
            <form action="{{ route('orders.destroy', $orders->id) }}" class="float-right" method="POST">
                {{ method_field('DELETE') }}
                {{ csrf_field() }}
                <button class="btn btn-danger">Delete</button>
            </form>
 
            <div class="float-right">
                <a class="btn btn-default" href="{{ route('orders.edit', $orders->id) }}">Edit</a>
            </div>
        </div>
 
    </div>
 
 
</div>
 
@include('footer')