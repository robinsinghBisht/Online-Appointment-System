<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Patient Details</title>
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
</head>
<body>
<div class="container">
			<header>
				<h1>Online Appointment System</h1>
            </header>       

      <div  class="form">
    		<form id="insertionform" action="#" method="post" name="insertionform"> 
    		<span id="formtitle">Your Details (not modifiable)</span><hr width=89% align=left><br>
    			
    			<p class="insertion"><label for="username">Username</label></p> 
    			<input id="username" name="username" value="${sessionScope.patientUsername}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">Name</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientName}" type="text" readonly>
    		
    			<p class="insertion"><label for="name">Sex</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientSex}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">Email</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientEmail}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">Security Ques</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientSecurityQues}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">Security Ans</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientSecurityAns}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">Address</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientAddress}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">City</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientCity}" type="text" readonly>
    			
    			<p class="insertion"><label for="name">Mobile No</label></p> 
    			<input id="name" name="name" value="${sessionScope.patientMobile_no}" type="text" readonly>
   </form> 
</div>      
</div>

</body>
</html>
