<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class contentController extends Controller
{
    public function home(){
        

        $content = "<h1 >May PIZZA help you? </h1>
           <h2>O r d e r</h2>";
        
        $data = array(
            'title' => "",
            'content' => $content
        );

        return view('home', $data);
    }
}
