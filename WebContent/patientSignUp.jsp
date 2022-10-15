<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Patient SignUp Page</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
<style>
body
{
	background:url(images/bgnoise_lg.png);
}
</style>
<script type="text/javascript">
function makeLowercase() {
document.insertionform.username.value = document.insertionform.username.value.toLowerCase();
}
</script>
</head>
<body>
<div class="container">
			<header>
				<%-- <h1>Online Appointment System</h1> --%>
            </header>       

      <div  class="form">
    		<form id="insertionform" action="patientUploadImage.jsp" method="post" name="insertionform"> 
    		<span id="formtitle">New patient registration</span><hr width=89% align=left><br>
    			<div style="color: red;">${param.usernameMsg}</div>
    			<p class="insertion"><label for="username">Username</label></p> 
    			<input id="username" name="username" value="${param.username}" onBlur="makeLowercase();" placeholder="Choose an username! (min. 4 characters)" required tabindex="1" type="text" pattern="[A-Za-z]+.{3,}" title="Username must be atleast 4 characters & first character must be alphabet">
    			
    			<p class="insertion"><label for="name">Name</label></p> 
    			<input id="name" name="name" value="${param.name}" placeholder="First name and Last name(optional)" required tabindex="2" type="text">
    		
    			<div style="color: green;">${param.selectAgain}</div>
    			<p class="insertion"><label for="sex">Sex</label></p> 
    			<select class="select-style list" id="sex" name="sex" required tabindex="3">
    			<option disabled value="" selected="selected">--- Select your gender ---</option>
          		 <option value="M">Male</option>
           		 <option value="F">Female</option>
          		 <option value="O">Other</option>
           		 </select><br><br>
           		 
           		<p class="insertion"><label for="email">Email</label></p>
           		<input id="email" name="email" value="${param.email}" placeholder="example@domain.com" type="email" required tabindex="4">
           		
    			<p class="contact"><label for="password">Create a password</label><br></p><br> 
    			<input type="password" id="password" name="password" required tabindex="5" placeholder="Enter password! (min. 8 characters)"  pattern=".{8,}" title="Password must be atleast 8 characters"> 
                <div style="color: red;">${param.passwordMsg}</div>
                <p class="contact"><label for="repassword">Confirm your password</label></p><br> 
    			<input type="password" id="repassword" name="repassword" required tabindex="6" placeholder="Confirm entered password! (min. 8 characters)"  pattern=".{8,}" title="Password must be atleast 8 characters"> 
    			
    			<div style="color: green;">${param.selectAgain}</div>
    			<p class="insertion"><label for="securityques">Security question</label></p> 
    			<select class="select-style list" id="securityques" name="securityques" required tabindex="7">
    			<option disabled value="" selected="selected">--- Select security question ---</option>
           		 <option value="What is your pet name?">What is your pet name?</option>
          		 <option value="Who was your childhood hero?">Who was your childhood hero?</option>
          		 <option value="What is your spouse name?">What is your spouse name?</option>
           		 <option value="What was your childhood nickname?">What was your childhood nickname?</option>
          		 <option value="What was the name of your primary school?">What was the name of your primary school?</option>
           		 </select><br><br>
           		
           		<div style="color: green;">${param.securityAnsMsg}</div>
           		<p class="insertion"><label for="securityans">Security answer</label></p> 
    			<input id="securityans" name="securityans" placeholder="Enter your security answer!" required tabindex="8" type="text"> 
                
                <p class="insertion"><label for="adress">Address</label></p> 
    			<input id="address" name="address" value="${param.address}" placeholder="Enter your address!" required tabindex="9" type="text"> 
    			
                <p class="insertion"><label for="city">City</label></p> 
    			<input id="city" name="city" value="${param.city}" placeholder="Enter your city!" required tabindex="10" type="text"> 

            
            <p class="insertion"><label for="phone">Mobile number</label></p> 
            <input id="mobile_no" name="mobile_no" value="${param.mobile_no}" tabindex="11" placeholder="Enter your personal mobile number!" required type="text" maxlength="15" title="Mobile number should not be greater than 15 digits"> 
    		    		
            <input class="buttom" name="submit" id="submit" tabindex="12" value="Submit your details!" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>
