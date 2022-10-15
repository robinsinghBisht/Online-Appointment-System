<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Patient Appointment Booking</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/styleAppTab.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
    
    <link rel="stylesheet" type="text/css" href="css/tableAp.css"/>


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
minDate: 0
});
});
</script>
<script>
function showDatePicker(){
var val=document.getElementById("booked_for").value;
//var date = new Date(val);
//var dt=date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate();
var dt=	formatDate(val);
//alert(dt);
showTimeSlots(dt);
//alert("onChange2 event is working: "+val+"\n"+dt);
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

function setSlot(val)
{
document.getElementById("slot").value=val;
}
function setSlotBlank()
{
document.getElementById("slot").value="";
document.getElementById("booked_for").value="";
document.getElementById("timeSlotsTable").innerHTML="<p style='color:#ff0000;'>Select a date.</p><br>";
}
function setSlotBlankOnDate()
{
document.getElementById("slot").value="";
}
function checkSlot()
{
if(document.getElementById('slot').value == '')
{
alert('Select a slot first.');
return false;
}
else
return true;
}
</script>	
	
	
<script type="text/javascript" src="ajax/PatientAppointmentBooking.js"></script>
</head>
<body onLoad="loadXMLDoc()">
<div class="container">   
      <div  class="form">
    		<form action="patientAppointmentBookingCompleted.jsp" method="post" name="myform" onsubmit="return checkSlot()"> 
    		<span id="formtitle">Book an appointment</span><hr width=89% align=left><br>
    		
				<p class="insertion"><label for="type">Specialty -   <a href="aListOfMedicalSpecialists.html" target="_blank" style="color:#A52A2A;">Click Here, to know about Medical Specialists and What they do</a></label></p> 
    			<select class="select-style list" name="selectSpecialty" onChange="loadXMLDoc2(),setSlotBlank()" autofocus tabindex="1" required>
          		 <option disabled value="" selected="selected">--- Select Specialty ---</option>
           		</select><br><br>
           		
           		<p class="insertion"><label for="type">Doctor</label></p> 
    			<select class="select-style list" name="selectDoctor" id="selectDoctor" onChange="setSlotBlank()" tabindex="2" required>
          		 <option disabled value="" selected="selected">--- Select Doctor ---</option>
           		</select><br><br>
				
				<p class="insertion"><label for="date">Illness (optional)</label></p> 
    			<input id="illness" name="illness" tabindex="3" type="text" placeholder="Tell us about your Illness.">
    			
				
				<p class="insertion"><label for="date">Select Date</label></p> 
    			<input id="booked_for" name="booked_for" required tabindex="4" type="text" onChange="showDatePicker(),setSlotBlankOnDate()" placeholder="Select a date, past dates are disabled.">
    			
				
           		<p class="insertion"><label for="slot">Selected Slot</label></p> 
    			<input id="slot" name="slot" readonly required value="" tabindex="5" type="text" placeholder="Select a slot from below first, will be displayed here.">
    			
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
