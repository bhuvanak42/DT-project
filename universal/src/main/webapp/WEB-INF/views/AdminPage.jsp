<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <title>Apple eStore Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      position: relative;
  }
  
   #addCategory {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}
   #deleteCategory{padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}
   #editCategory{padding-top:50px;height:500px;color: #fff; background-color: #009688;}
   
   #addSupplier {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}
   #deleteSupplier {padding-top:50px;height:500px;color: #fff; background-color: #009688;}
   #editSupplier{padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}
   
   #addProduct {padding-top:50px;height:500px;color: #fff; background-color: #1E88E5;}
   #deleteProduct{padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}
   #editProduct {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}

  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Apple eStore</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#addCategory">Add Category</a></li>
              <li><a href="#deleteCategory">Delete Category</a></li>
              <li><a href="#editCategory">Edit/update Category</a></li>
            </ul>
          </li>
           <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#addSupplier">Add Supplier</a></li>
              <li><a href="#deleteSupplier">Delete Supplier</a></li>
              <li><a href="#editSupplier">Edit/update Supplier</a></li>
            </ul>
          </li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#addProduct">Add Product</a></li>
              <li><a href="#deleteProduct">Delete Product</a></li>
              <li><a href="#editProduct">Edit/update Product</a></li>
            </ul>
          </li>
        
        </ul>
      </div>
    </div>
  </div>
  <a align="right" href="logout"><strong>Logout</strong></a>
</nav>

<div id="addCategory" class="container-fluid">
  <h1>Add Category</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="deleteCategory" class="container-fluid">
  <h1>Delete Category</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="editCategory" class="container-fluid">
  <h1>Edit/Update Category</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>


<div id="addSupplier" class="container-fluid">
  <h1>Add Supplier</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="deleteSupplier" class="container-fluid">
  <h1>Delete Supplier</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="editSupplier" class="container-fluid">
  <h1>Edit/Update Supplier</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>


<div id="addProduct" class="container-fluid">
  <h1>Add Product</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="deleteProduct" class="container-fluid">
  <h1>Delete Product</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="editProduct" class="container-fluid">
  <h1>Edit/Update Product</h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>


</body>
</html>