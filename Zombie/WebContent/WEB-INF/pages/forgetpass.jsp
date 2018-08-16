<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
</head>
<body bgcolor=#ADD8E6 text=black>
<jsp:include page="banner.jsp"/>
	<h2>Forget Password</h2>
	<% if(request.getParameter("invalid")!= null) { %>
	<font size="3" color = "red">Invalid Email ID / Movie</font>
	<% } %>
	<form action="users.hola">
		<span>EmailId :</span> <span><input type="email" name="email"
			placeholder="someone@xyz.in"></span> <br> <br> <B>
			Security Question :</B> <br> Your Favorite <i>Movie</i>? <br> <br>
		<input type="password" pattern="[A-Za-z0-9 @#$%^&*()!]{1,50}"
			placeholder="1 character minimum" name="movie"> <br> <br> <span><input
			type="submit" value="submit"> </span>
			
			
	</form>
<%@include file="footer.html" %></a>
</body>
</html>