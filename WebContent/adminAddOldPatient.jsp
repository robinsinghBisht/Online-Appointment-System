<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Old Patient</title>
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
				<%-- <h1>Online Appointment System</h1> --%>
            </header>       

      <div  class="form">
    		<form id="insertionform" action="adminAddOldPatientCompleted.jsp" method="post" name="insertionform"> 
    		<span id="formtitle">Add old patient details</span><hr width=89% align=left><br>
      		
				<p class="insertion"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="First name and Last name(optional)" required tabindex="1" type="text">
    		
    			<p class="insertion"><label for="sex">Sex</label></p> 
    			<select class="select-style list" id="sex" name="sex" required tabindex="2">
    			<option disabled value="" selected="selected">--- Select your gender ---</option>
          		 <option value="M">Male</option>
           		 <option value="F">Female</option>
          		 <option value="O">Other</option>
           		 </select><br><br>
    		
           		
            <p class="insertion"><label for="phone">Mobile number</label></p> 
            <input id="mobile_no" name="mobile_no" tabindex="3" placeholder="Enter mobile number!" required type="text" maxlength="15" title="Mobile number should not be greater than 15 digits"> 
    		    		
           		  <p class="insertion"><label for="adress">Address</label></p> 
    			<input id="address" name="address" placeholder="Enter address!" tabindex="4" type="text"> 
    			
                <p class="insertion"><label for="city">City</label></p> 
    			<input id="city" name="city" tabindex="5" type="text" placeholder="Enter city!"> 

           
            <input class="buttom" name="submit" id="submit" tabindex="12" value="Submit your details!" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>
