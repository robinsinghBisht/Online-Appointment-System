<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update Details!</title>
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
	    		<form id="updateform" action="patientUpdateDetailsCompleted.jsp" method="post" name="updateform">
	    		<span id="formtitle">Update Your Details</span><hr width=89% align=left><br> 
	    		
	    			<p class="insertion"><label for="name">Name</label></p> 
	    			<input id="name" name="name" placeholder="First and Last name" required tabindex="1" type="text" value="${sessionScope.patientName}">
	    		
	    			<p class="insertion"><label for="sex">Sex</label></p> 
    				<select class="select-style list" name="sex">
    				<option value="${sessionScope.patientSex}" selected="selected" required>${sessionScope.patientSex}</option>
          			 <option value="M">Male</option>
           			 <option value="F">Female</option>
          			 <option value="O">Other</option>
           			 </select><br><br>
	    			
	    			<p class="insertion"><label for="email">Email</label></p> 
	    		    <input id="email" name="email" placeholder="example@domain.com" type="email" value="${sessionScope.patientEmail}" required>
	    		  
	    		 <p class="insertion"><label for="securityques">Security question</label></p> 
    			 <select class="select-style list" name="securityques">
    			 <option value="${sessionScope.patientSecurityQues}" selected="selected" required>${sessionScope.patientSecurityQues}</option>
           		 <option value="What is your pet name?">What is your pet name?</option>
          		 <option value="Who was your childhood hero?">Who was your childhood hero?</option>
          		 <option value="What is your spouse name?">What is your spouse name?</option>
           		 <option value="What was your childhood nickname?">What was your childhood nickname?</option>
          		 <option value="What was the name of your primary school?">What was the name of your primary school?</option>
           		 </select><br><br>
           		 
           		 <p class="insertion"><label for="securityans">Security answer</label></p> 
    			<input id="securityans" name="securityans" placeholder="Enter your security answer!" required tabindex="1" type="text" value="${sessionScope.patientSecurityAns}"> 
	 
	                <p class="insertion"><label for="adress">Address</label></p> 
	    			<input id="address" name="address" placeholder="Enter your address!" required tabindex="2" type="text" value="${sessionScope.patientAddress}"> 
	                
	                <p class="insertion"><label for="city">City</label></p> 
	    			<input id="city" name="city" placeholder="Enter your city!" required tabindex="2" type="text" value="${sessionScope.patientCity}"> 

	            
	            <p class="insertion"><label for="phone">Mobile number</label></p> 
	            <input id="mobile_no" name="mobile_no" placeholder="Enter your personal mobile number!" required type="text" value="${sessionScope.patientMobile_no}" maxlength="15" title="Mobile number should not be greater than 15 digits"><br><br>
	            
	            <input class="buttom" name="submit" id="submit" tabindex="5" value="Update your details!" type="submit"> 	 
	   </form> 
	</div>      
	</div>
</body>
</html>