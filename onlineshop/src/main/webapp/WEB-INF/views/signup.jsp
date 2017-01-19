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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<header style="text-align:center;">SIGN DETAILS TO SPORTS SHOES WEBSITE 
<jsp:include page="header.jsp"></jsp:include> </header>

</head>
<body>

<form action="regiform" method="post" commandName="user" class="form-horizontal">

<br>
<br>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Username:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  style ="width:35%" name="username" id="reg_uname" placeholder="Enter UserName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control"  style ="width:35%" name="password" id="reg_pwd" placeholder="Enter password">
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">FIRST NAME:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control"  style ="width:35%" name="firstname" id="reg_fname" placeholder="Enter your FirstName">
    </div>
  </div>
 
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">LAST NAME:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control"  style ="width:35%" name="lastname" id="reg_lname" placeholder="Enter your LastName">
    </div>
  </div>
  
   
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>


</form>
</body>
<footer>
<jsp:include page="footer.jsp"></jsp:include> </header>
</footer>


</html>