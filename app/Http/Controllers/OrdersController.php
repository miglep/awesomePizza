<?php

namespace App\Http\Controllers;

use App\Orders;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $data['orders'] = Orders::all();
        
        return view('orders', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $orders = new Orders();
 
        $orders->updated_at = $request->updated_at;
        $orders->unitsOrdered = $request->unitsOrdered;
        $orders->size = $request->size;
        $orders->deliveryAddress=$request->deliveryAddress;
        $orders->city=$request->city;
        $orders->totalPrice = $request->totalPrice;
        
        $orders->save();
 
      return view('home');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Orders  $orders
     * @return \Illuminate\Http\Response
     */
    public function show(Orders $orders)
    {
    //    $data['orders'] = $orders ->paginate(10);
         $data['orders'] = Order:: where ('orders', $orders->id) -> orderBy('updated_at', 'DESC') ->paginate(10);
       // $orders = Orders::where('orders')->paginate(10);
        return view('orders_show', $data);
        
        
        
        

        $countries = Country::where('continent', $continent->id)->orderBy('title', 'DESC')->paginate(20);

      
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Orders  $orders
     * @return \Illuminate\Http\Response
     */
    public function edit(Orders $orders)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Orders  $orders
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Orders $orders)
    {
     
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Orders  $orders
     * @return \Illuminate\Http\Response
     */
    public function destroy(Orders $orders)
    {
        //
    }
}
