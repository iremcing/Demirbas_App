<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="stil.css" />
<body>
	<div class="center">
		<h1>Login</h1>
		<form method="post" action="Logincheck">
			<div class="txt_field">
				<input type="text" name="Uname" required> <label>Username</label>
			</div>
			<div class="txt_field">
				<input type="password" name="pass" required> <label>Password</label>
			</div>
			<div class="pass">Forgot Password?</div>

			<div class="">
				<input type="submit" value="Login"> <a href="AnaSayfa.jsp">
				</a>

			</div>
		</form>
	</div>
</body>
</html>