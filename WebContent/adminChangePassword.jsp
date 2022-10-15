<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Change Password</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
<script type="text/javascript"></script>
<style>
body
{
	background:url(images/bgnoise_lg.png);
}
</style>
<script type="text/javascript" src="js/js.js"></script>
</head>
<body>
<div class="container">
			<header>
				<h1>Online Appointment System</h1>
            </header>       
      <div  class="form">
    		<form id="changepassswordform" action="adminChangePasswordCompleted.jsp" method="post" name="changepassswordform"> 
    		<span id="formtitle">Change your password!</span><hr width=89% align=left><br>
    		
    		    <p class="contact"><label for="password">Enter current password</label><br></p><br> 
    			<input type="text" id="currpassword" name="currpassword" required="" placeholder="Enter current password!"> 
                
                
				<p class="contact"><label for="password">Enter a new password</label><br></p><br> 
    			<input type="password" id="password" name="password" required="" placeholder="Enter new password!" pattern=".{8,}" title="Password must be atleast 8 characters"> 
                <p class="contact"><label for="repassword">Confirm your new password</label></p><br> 
    			<input type="password" id="repassword" name="repassword" required="" placeholder="Confirm entered new password!" pattern=".{8,}" title="Password must be atleast 8 characters"> 
            <br>
            <div style="color: red;">${param.passwordMsg}</div>
            <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Confirm!" type="submit"> 	 
   </form> 
</div>      
</div>
</body>
</html>