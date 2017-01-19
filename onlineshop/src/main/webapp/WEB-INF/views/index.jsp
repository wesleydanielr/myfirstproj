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
	
	<head>
	<jsp:include page="header.jsp"></jsp:include>
	</head>
	
	

<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				User : ${pageContext.request.userPrincipal.name} | <a
					href="javascript:formSubmit()"> Logout</a>
			</h2>
		</c:if>


	</sec:authorize>



	
<div id = "myCarousel" class = "carousel slide">
   
   <!-- Carousel indicators -->
   <ol class = "carousel-indicators">
      <li data-target = "#myCarousel" data-slide-to = "0" class = "active"></li>
      <li data-target = "#myCarousel" data-slide-to = "1"></li>
      <li data-target = "#myCarousel" data-slide-to = "2"></li>
   </ol>   
   
   <!-- Carousel items -->
   <div class = "carousel-inner">
      <div class = "item active">
         <img src = "<c:url value="resources/images/1.jpg" />" alt = "First slide" alt="Test Image1" width="1028" height="10%">
      </div>
      
      <div class = "item">
         <img src = "<c:url value="resources/images/2.jpg" />" alt = "Second slide"alt="Test Image1" width="1028" height="10%">
      </div>
      
      <div class = "item">
         <img src = "<c:url value="resources/images/3.jpg" />" alt = "Third slide"alt="Test Image1" width="1028" height="10%">
      </div>
   </div>
   <!-- Carousel nav -->
   <a class = "carousel-control left" href = "#myCarousel" data-slide = "prev">&lsaquo;</a>
   <a class = "carousel-control right" href = "#myCarousel" data-slide = "next">&rsaquo;</a>
   
</div> 
	</form>
<footer>    

	<jsp:include page="footer.jsp"></jsp:include>
	
</footer>	
	
</body>



</html>
