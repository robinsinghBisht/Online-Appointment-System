<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Add Old Patient's Appointment</title>
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

<%-- datepicker --%>
<link rel="stylesheet" href="css/jquery-ui-calendar.css">
<script type="text/javascript" src="js/jquery.min_cal.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("#booked_for").datepicker({
dateFormat : 'dd MM yy',
//minDate: 0
});
});
</script>
<script>
function showDatePicker(){
var val=document.getElementById("booked_for").value;
var dt=	formatDate(val);
}
function formatDate(val) {
    var today = new Date(val);
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!

    var yyyy = today.getFullYear();
    if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 
    //today = dd+'/'+mm+'/'+yyyy;
    today = yyyy+'-'+mm+'-'+dd;
    
    document.getElementById("booked_date").value=today;
    
    return today;
}
</script>	
</head>

<body>
<div class="container">   
			<header>
				<%-- <h1>Online Appointment System</h1> --%>
            </header>
            
      <div  class="form">
    		<form action="adminAddAppointmentOldPatientCompleted.jsp" method="post" name="myform"> 
    		<span id="formtitle">Add appointment</span><hr width=89% align=left><br>
    					
				
				<p class="insertion"><label for="date">Select Date</label></p> 
    			<input id="booked_for" name="booked_for" required tabindex="1" type="text" onChange="showDatePicker()" placeholder="Select a date.">
    			
    			<p class="insertion"><label for="slot">Time Slots</label></p> 
    			<select class="select-style list" id="slot" name="slot" required tabindex="2">
    			<option disabled value="" selected="selected">--- Select Slot ---</option>
							<option value="10:00 - 10:15">10:00 - 10:15</option>
							<option value="10:15 - 10:30">10:15 - 10:30</option>
							<option value="10:30 - 10:45">10:30 - 10:45</option>
							<option value="10:45 - 11:00">10:45 - 11:00</option>
							<option value="11:00 - 11:15">11:00 - 11:15</option>
							<option value="11:15 - 11:30">11:15 - 11:30</option>
							<option value="11:30 - 11:45">11:30 - 11:45</option>
							<option value="11:45 - 12:00">11:45 - 12:00</option>
							<option value="12:00 - 12:15">12:00 - 12:15</option>
							<option value="12:15 - 12:30">12:15 - 12:30</option>
							<option value="12:30 - 12:45">12:30 - 12:45</option>
							<option value="12:45 - 13:00">12:45 - 13:00</option>
							<option value="13:00 - 13:15">13:00 - 13:15</option>
							<option value="13:15 - 13:30">13:15 - 13:30</option>
							<option value="13:30 - 13:45">13:30 - 13:45</option>
							<option value="13:45 - 14:00">13:45 - 14:00</option>
							<option value="14:00 - 14:15">14:00 - 14:15</option>
							<option value="14:15 - 14:30">14:15 - 14:30</option>
							<option value="14:30 - 14:45">14:30 - 14:45</option>
							<option value="14:45 - 15:00">14:45 - 15:00</option>
							<option value="15:00 - 15:15">15:00 - 15:15</option>
							<option value="15:15 - 15:30">15:15 - 15:30</option>
							<option value="15:30 - 15:45">15:30 - 15:45</option>
							<option value="15:45 - 16:00">15:45 - 16:00</option>
							<option value="16:00 - 16:15">16:00 - 16:15</option>
							<option value="16:15 - 16:30">16:15 - 16:30</option>
							<option value="16:30 - 16:45">16:30 - 16:45</option>
							<option value="16:45 - 17:00">16:45 - 17:00</option>
							<option value="17:00 - 17:15">17:00 - 17:15</option>
							<option value="17:15 - 17:30">17:15 - 17:30</option>
							<option value="17:30 - 17:45">17:30 - 17:45</option>
							<option value="17:45 - 18:00">17:45 - 18:00</option>
							<option value="18:00 - 18:15">18:00 - 18:15</option>
							<option value="18:15 - 18:30">18:15 - 18:30</option>
							<option value="18:30 - 18:45">18:30 - 18:45</option>
							<option value="18:45 - 19:00">18:45 - 19:00</option>
							<option value="19:00 - 19:15">19:00 - 19:15</option>
							<option value="19:15 - 19:30">19:15 - 19:30</option>
							<option value="19:30 - 19:45">19:30 - 19:45</option>
							<option value="19:45 - 20:00">19:45 - 20:00</option>
							<option value="20:00 - 20:15">20:00 - 20:15</option>
							<option value="20:15 - 20:30">20:15 - 20:30</option>
							<option value="20:30 - 20:45">20:30 - 20:45</option>
							<option value="20:45 - 21:00">20:45 - 21:00</option>
           		 </select><br><br>
           		

				<p class="insertion"><label for="uhid">UHID</label></p> 
    			<input id="uhid" name="uhid" placeholder="Enter UHID" required tabindex="3" type="text">
    		
    		
           		<p class="insertion"><label for="doctor_id">Doctor ID</label></p>
           		<input id="doctor_id" name="doctor_id" placeholder="Doctor ID" type="text" required tabindex="4">
           		
    			
				<p class="insertion"><label for="illness">Illness (optional)</label></p> 
    			<input id="illness" name="illness" tabindex="5" type="text" placeholder="Illness">
    			
				
    		<input type="hidden" name="booked_date" id="booked_date">
    		
    		<%-- Time Slots --%>
    		<div style="width:602px" id="timeSlotsTable"></div>

    		
            <input class="buttom" name="submit" id="submit" tabindex="6" value="Submit" type="submit"> 	
             &nbsp;
             <input class="buttom" type="reset" value="Reset"> 
   </form> 
</div>      
</div>

</body>
</html>
