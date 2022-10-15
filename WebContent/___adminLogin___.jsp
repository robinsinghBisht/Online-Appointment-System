<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!doctype html>
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>Login</title>
	
	<link rel="stylesheet" href="css/resettt.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/styles.css">
	
	<style>
	body
	{
		background:url(images/bgnoise_lg.png);
	}
	</style>
	
</head>
	
<body>

	<div id="container">
		
		<form method="post" action="___adminLoginSuccess___.jsp" target="_parent">
		
		<label for="name">Admin Username:</label>
		
		<input type="text" name="username" placeholder="Username" required>
		
		<label for="username">Admin Password:</label>
		
		<%-- <p><a href="patientForgetPassword.jsp">Forgot your password?</a> --%>
		
		<input type="password" name="password" placeholder="Password" required>
		
		<div id="lower">
		<%-- <input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label> --%>
		<input type="submit" value="Login">
		
		</div>
		
		</form>
		
		<br/><br/>
		<span style="color:red; font-size:11px">${param.loginErrorMsg}</span>
		<span style="color:green; font-size:11px">${param.logoutSuccessMsg}</span>
	</div>
	
</body>

</html>
	
	
	
	
	
		
	