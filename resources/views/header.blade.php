<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="utf-8">
	<meta name="description" content="">
	<meta name="author" content="Scotch">

	<title>@yield('title')</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

	<link rel="stylesheet" href="{{ URL::asset('css/style.css') }}" type="text/css">

</head>

<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="{{ url('/') }}">Awesome Pizza</a>
    <div class="navbar-img">
    <img src="{{ URL::asset('img/images.jpg') }}" alt=""> 
   </div>
   
 <h1 style="margin-left: 5px;">The way you eat...</h1>
             
                    <a style="margin-left: 30px; width: 80px; background-color: lightgrey; color: black; padding: 4px; font-size: 20px; margin-right: 5px;" >Login</a>
                    <a style=" width: 80px; background-color: lightgrey; color: black; padding: 4px; font-size: 20px;">Register</a><br>
                    <br>
                    <p style="margin-left: 5px;">You are logged in as  <span style="font-size:30px; font-weight: 600">You</span></p>
    
</nav>