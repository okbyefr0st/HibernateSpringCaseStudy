<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body bgcolor=#ADD8E6 text=black>
<jsp:include page="banner.jsp"/>
	<h2>Login Page</h2>
	<% if(request.getParameter("invalid")!= null) { %>
	<font size="3" color = "red">Invalid Email ID / Password</font>
	<% } %>
	<form action="users.hola">
		<b>EmailId :</B></br><input type="email" name="email"
			placeholder="someone@xyz.in"></span> <br> <br> <B>
			
			
			Password :</B> <br> <input type="password" name="password" pattern="[A-Za-z0-9@#$]{8,20}"
			placeholder="8 characters minimum"> <br> <br>
			<span><input
			type="submit" value="Submit" > </span>
			
			
			<a href="forgetpass.jsp">Forget Password</a>


	</form><%@include file="footer.html" %></a>
</body>
</html>