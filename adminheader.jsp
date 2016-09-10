<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	carouselbackground-color: grey;
}
</style>

</head>
<body>

	<center>	<h3>Welcome To Smart Mobile Shop</h3></center>
	<br>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">MobileShoppy</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="product">Product <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="product">Add</li>
						<li><a href="product">Delete</a></li>
						<li><a href="product">Edit</a></li>
						<li><a href="product">View all</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" >Category <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="category">Add</li>
						<li><a href="category">Delete</a></li>
						<li><a href="editcategory">Edit</a></li>
						<li><a href="category">View all</a></li>
					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="supplier">Supplier <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="supplier">Add</li>
						<li><a href="supplier">Delete</a></li>
						<li><a href="editsupplier">Edit</a></li>
						<li><a href="supplier">View all</a></li>
					</ul></li>
		</div>
	</nav>
	<br>
	<br>
	<br>
