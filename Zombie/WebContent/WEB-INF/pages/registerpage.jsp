<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body bgcolor=#ADD8E6 text=black>
	<jsp:include page="banner.jsp" />

	<form action="users.hola">
		<table width="400" allign="center">
			<tr>
				<th colspan="2">Registration Form</th>
			</tr>
			<tr>
				<td><b>Name :</B><br></td>
			</tr>
			<tr>
				<td><input type="text" name="name"
					placeholder="Enter your name" pattern="[A-Za-z]{2,35}"> <br>
					<br></td>
			</tr>

			<tr>
				<td><b>EmailId :</B><br></td>
			</tr>
			<tr>
				<td><input type="email" name="email"
					placeholder="someone@xyz.in" pattern="[A-Za-z0-9@.]{10,40}"><br>
					<br></td>
			</tr>

			<tr>
				<td><b>Password :</B> <br></td>
			</tr>
			<tr>
				<td><input type="password" name="password"
					pattern="[A-Za-z0-9@#$]{8,20}"
					placeholder="8 to 20 characters minimum"><br> <br></td>
			</tr>

			<tr>
				<td><b>Age :</B> <br></td>
			</tr>
			<tr>
				<td><input type="text" name="age" placeholder="Enter your age"
					pattern="[0-9]{1,3}"><br> <br></td>
			</tr>

			<tr>
				<td><b>Gender:</B> <br></td>
			</tr>
			<tr>
				<td><input name="gender" type="radio" value="male" checked>
					Male<br> <input type="radio" name="gender" value="female">
					Female<br> <input type="radio" name="gender" value="other">
					Other <br> <br></td>
			</tr>

			<tr>
				<td><b>City :</B> <br></td>
			</tr>
			<tr>
			<tr>
				<td><Select name="city">
						<%
							String[] cities = { "Mumbai", "Pune", "Manglore", "Nepal", "Kanpur" };
							for (String ct : cities) {
						%>
						<option value="<%=ct%>"><%=ct%></option>
						<%
							}
						%>
				</td>
			</tr>
			</select>

			</td>
			</tr>
			<br>
			<br>
			<tr>
				<td><b>Favorite Movie :</B><br></td>
			</tr>
			<tr>
				<td><input type="text" name="movie"
					placeholder="Enter favorite movie"
					pattern="[A-Za-z0-9@.# $&*^%!]{1,30}"> <br> <br></td>
			</tr>

			<tr>
				<td><b>Photo :</B> <br></td>
			</tr>
			<tr>
				<td><input type="file" name="photo"
					placeholder="Enter your photo"> <br> <br></td>
			</tr>

			<span><tr>
					<td colspan="2"><input type="submit" value="Submit"></span>
			<span><input type="reset" value="Reset" name="reset"></span>
			</td>
			</tr>
		</table>
	</form>
	<%@include file="footer.html"%>

</body>
</html>