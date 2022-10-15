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
		
		<form method="post" action="oldPatientLoginSuccess.jsp" target="_parent">
		
		<label for="name">UHID:</label>
		
		<input type="text" name="uhid" placeholder="Enter your valid UHID" required>
		
		<label for="username">Mobile No:</label>
		
		<%--<p><a href="patientForgetPassword.jsp">Forgot your password?</a>--%>
		
		<input type="password" name="mobile_no" placeholder="Enter your mobile no." required>
		
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
	
	
	
	
	
		
	