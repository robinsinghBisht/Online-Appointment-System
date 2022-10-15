<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Add New Doctor</title>
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
    		<form id="insertionform" action="adminAddNewDoctorCompleted.jsp" method="post" name="insertionform"> 
    		<span id="formtitle">Add new doctor</span><hr width=89% align=left><br>
    			<p class="insertion"><label for="specialty">Specialty</label></p> 
    			<select class="select-style list" id="specialty" name="specialty" required tabindex="1">
    			<option disabled value="" selected="selected">--- Select Specialty ---</option>
          		 	<option value="Allergist">Allergist</option>
						<option value="Anesthesiologist">Anesthesiologist</option>
						<option value="Cardiologist">Cardiologist</option>
						<option value="Dermatologist">Dermatologist</option>
						<option value="Gastroenterologist">Gastroenterologist</option>
						<option value="Hematologist">Hematologist</option>
						<option value="Internal Medicine Physician">Internal Medicine Physician</option>
						<option value="Nephrologist">Nephrologist</option>
						<option value="Neurologist">Neurologist</option>
						<option value="Neurosurgeon">Neurosurgeon</option>
						<option value="Obstetrician">Obstetrician</option>
						<option value="Gynecologist">Gynecologist</option>
						<option value="Nurse-Midwifery">Nurse-Midwifery</option>
						<option value="Occupational Medicine Physician">Occupational Medicine Physician</option>
						<option value="Ophthalmologist">Ophthalmologist</option>
						<option value="Oral and Maxillofacial Surgeon">Oral and Maxillofacial Surgeon</option>
						<option value="Orthopaedic Surgeon">Orthopaedic Surgeon</option>
						<option value="Otolaryngologist">Otolaryngologist</option>
						<option value="Pathologist">Pathologist</option>
						<option value="Pediatrician">Pediatrician</option>
						<option value="Plastic Surgeon">Plastic Surgeon</option>
						<option value="Podiatrist">Podiatrist</option>
						<option value="Psychiatrist">Psychiatrist</option>
						<option value="Pulmonary Medicine Physician">Pulmonary Medicine Physician</option>
						<option value="Radiation Onconlogist">Radiation Onconlogist</option>
						<option value="Diagnostic Radiologist">Diagnostic Radiologist</option>
						<option value="Rheumatologist">Rheumatologist</option>
						<option value="Urologist">Urologist</option>
           		 </select><br><br>
           		

				<p class="insertion"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="First name and Last name(optional)" required tabindex="2" type="text">
    		
    		
           		<p class="insertion"><label for="email">Email</label></p>
           		<input id="email" name="email" placeholder="example@domain.com" type="email" required tabindex="3">
           		
    		
            <input class="buttom" name="submit" id="submit" tabindex="12" value="Submit!" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>
