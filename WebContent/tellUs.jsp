<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Tell Us</title>
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
textarea
{
    width:88%;
}
</style>
<script type="text/javascript" src="js/js.js"></script>
</head>
<body>
<div class="container">
			<header>
				<h1>Fill out the form below!</h1>
            </header>   
      <div  class="form">
    	<form action="tellUsCompleted.jsp" method="post" name="insertionform"> 
    		<span id="formtitle">Tell Us</span><hr width=89% align=left><br>
    		
    			<p class="insertion"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="Enter your name here." required tabindex="1" type="text">
           		 
           		<p class="insertion"><label for="email">Email</label></p>
           		<input id="email" name="email" placeholder="example@domain.com" type="email" required tabindex="2">
           		
				<p class="insertion"><label for="type">Regarding</label></p> 
    			<select class="select-style list" name="regarding" tabindex="3" required>
    			<option disabled value="" selected="selected">--- Select Regarding ---</option>
          		 <option value="Feedback">Feedback</option>
           		 <option value="Enquiry">Enquiry</option>
          		 <option value="Complaint">Complaint</option>
           		 </select><br><br>
				
           		<p class="insertion"><label for="subject">Subject</label></p> 
    			<input id="subject" name="subject" placeholder="Enter title here" required tabindex="4" type="text">
    			
    			<p class="insertion"><label for="message">Message</label></p> 
    			<textarea rows="10" id="message" name="message" placeholder="Elaborate your valueable details for us!" required tabindex="5"></textarea><br><br>
    			
    		
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Submit" type="submit"> 	
             &nbsp;
             <input class="buttom" type="reset" value="Reset"> 
   </form> 
</div>      
</div>

</body>
</html>
