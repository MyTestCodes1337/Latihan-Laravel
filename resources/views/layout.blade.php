<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>CRUD Example Tutorial</title>
  <link href="{{ asset('css/app.css') }}" rel="stylesheet" type="text/css" />
  <link href="{{ asset('css/base.css') }}" rel="stylesheet" type="text/css" />
</head>
<body>
  <div class="container">
    <h1>Latihan CRUD</h1>
  	<hr>
    @yield('content')
  </div>
  <script src="{{ asset('/js/jquery-3.4.1.min.js') }}"></script>
  <script src="{{ asset('/js/script.js') }}"></script>
  <script src="{{ asset('js/app.js') }}" type="text/js"></script>
</body>
</html>