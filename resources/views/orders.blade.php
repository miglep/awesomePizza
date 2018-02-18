@section('title')
    orders
@stop
 
@include('header')
 
<div class="container">
 
    <h2>All your orders</h2>
    
    
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif 
 
   
 
    <div class="row">
        <div class="col-md-12">
            <table class="table">
            <thead>
                <tr>
                    <th>
                     Order Date
                    </th>
                    <th>
                    Units ordered
                    </th>
                    <th>
                     Size
                      </th> 
                    <th>
                    Delivery address
                    </th>
                     <th>
                    City
                    </th>
                    <th>
                      Total price
                    </th>  
                </tr>
            </thead>
            @foreach ($orders as $order)
                <tr>
                    <td >
                        <a style="color: black;"href="{{ route('orders.show', $order->id) }}">
                        {{ $order->created_at }}</a>
                    </td>
                    <td style="text-align: center;">
                        {{ $order->unitsOrdered }}
                    </td>
                     <td style="text-align: center;">
                        {{ $order->size}}
                    </td>
                    
                     <td style="text-align: center;">
                        {{ $order->deliveryAddress }}
                    </td>
                     <td style="text-align: center;">
                        {{ $order->city }}
                    </td>
                    <td style="text-align: center;">
                        {{ $order->totalPrice }}
                    </td>
                    <td>
                     
                </tr>
            @endforeach
            </table>
        </div>
 
    </div>
 
 
</div>
 
