<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<style>
.carousel-inner > .item > img, 
.carousel-inner > .item > a > img {
    width: 100%;
}

body {
background-image: url(resources/images/bg.jpg);

}
h2 {
color: yellow;
}

</style>


<body ">
	<h2>SPORT SHOES CART</h2>
	<head>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home">SportShoes</a>
    </div>
    <ul class="nav navbar-nav">
     
      <li><a href="addproduct">ADD PRODUCT</a></li>
      <li><a href="#">Link</a></li>
    </ul>
    <a href="signup" class="btn btn-danger navbar-btn"style="float:right;">Sign Up</a>
    <a href="login" class="btn btn-danger navbar-btn"style="float:right;">log In</a>
    <c:if test="login">
	<jsp:include page="login.jsp"></jsp:include>
	</c:if>
  </div>
</nav>
	</head>
