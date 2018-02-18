@section('contentbar')
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <h1 >May PIZZA help you? </h1>
           <h2>O r d e r</h2>
  <div class="order-box">
  <form method="post" action= "{{route('orders.store')}}" method="POST">
                {{ method_field('POST') }}
                {{ csrf_field() }}
                

   How much pizzas will you eat: <input type="number" name="unitsOrdered"><br>
   How big pizza should I bake:<select name="size">
    <option value="Select">Select</option>
  <option value="big">Big</option>
  <option value="medium">Medium</option>
  <option value="small">Small</option>
  </select><br/>
   What address should I deliver your pizza : <input type="text" name="deliveryAddress"><br>
   City:  <select name="city">
   <option value="Select">Select</option>
  <option value="Vilnius">Vilnius</option>
  <option value="Kaunas">Kaunas</option>
   </select><br>
  Price for you to pay is € <input id="totalPrice" type="number" name="totalPrice" value="{{ rand(10, 100) }}" style="display: none;" ><br>
  <button id="hideShow" value='hide/show' style="width:200px; color: deeppink; font-size: 20px; font-weight: 700;" type="submit" onclick="showDiv()">Order Now</button> <br> 

<script>
function showDiv() {
   document.getElementById('totalPrice').style.display = "inline-block";
}
</script>
    
  <a style="font-size: 35px;font-weight: 700; color: #01DF3A;" class="nav-link" href="{{ route('orders.index') }}">See All Your Orders</a>
                 
  </form>
  
</div>
@stop