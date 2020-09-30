<!DOCTYPE html>
<html>
<head>
	<title>Belajar Vue</title>
	<meta name="csrf_token" content="{{ csrf_token() }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
</head>
<body>
	<div id="app">
		<index-component></index-component>
	</div>
	<script src="{{ asset('/js/jquery-3.4.1.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('js/app.js') }}"></script>
</body>
</html>