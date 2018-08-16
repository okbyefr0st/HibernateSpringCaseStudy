<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body bgcolor=#ADD8E6 text=black>
<jsp:include page="banner.jsp"/>
	<h2>Forget Password</h2>
	<form action="users.hola">
		<span>New Password:</span> <span><input type="password" pattern="[A-Za-z0-9]{8,20}"
			placeholder="8 to 20 characters minimum" name="password"> <br> <br> <span>
			Enter Email ::</span> <span><input type="email"  name="email"> <br> <br>
			<input
			type="submit" value="submit" name="submit"> </span>
			<span><a href="login.jsp"><button>Login again</button></a>
	</form>
<%@include file="footer.html" %></a>

</body>
</html>