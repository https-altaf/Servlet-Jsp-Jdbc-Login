<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
 background-color: #10151B;
	font-family: 'Open Sans', sans-serif;
}

.login {
	width: 400px;
	margin: 16px auto;
	font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header, .login p {
	margin-top: 0;
	margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {
	width: 0;
	margin-right: auto;
	margin-left: auto;
	border: 12px solid transparent;
	border-bottom-color: #28d;
}

.login-header {
	background:#626262 ;
	padding: 20px;
	font-size: 1.4em;
	font-weight: normal;
	text-align: center;
	text-transform: uppercase;
	color: #fff;
}

.login-container {
	background:gray;
	padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
	padding: 12px;
}

.login input {
	box-sizing: border-box;
	display: block;
	width: 100%;
	border-width: 1px;
	border-style: solid;
	padding: 16px;
	outline: 0;
	font-family: inherit;
	font-size: 0.95em;
}

.login input[type="email"], .login input[type="password"] {
	background: #fff;
	border-color: #bbb;
	color: #555;
}

/* Text fields' focus effect */
.login input[type="email"]:focus, .login input[type="password"]:focus {
	border-color: #888;
}

.login input[type="submit"] {
	background:#626262;
	border-color: transparent;
	color: #fff;
	cursor: pointer;
}

.login input[type="submit"]:hover {
	background: #17c;
}

/* Buttons' focus effect */
.login input[type="submit"]:focus {
	border-color: #05a;
}
</style>
</head>
<body>

	<div class="login">
		<div class="login-triangle"></div>

		<h2 class="login-header">Log in</h2>

		<form action="login" method="post" class="login-container">
			<p>
				<input type="text" name="username" placeholder="username">
			</p>
			<p>
				<input type="password" name="password" placeholder="Password">
			</p>
			<p>
				<input type="submit" value="Log in">
			</p>
		</form>
	</div>

</body>
</html>