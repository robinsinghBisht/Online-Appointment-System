<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Booking</title>
</head>
<body>
<jsp:useBean id="appointment" class="root.beans.PatientAppointmentBookingCompletedBean"/>
<jsp:setProperty name="appointment" property="*"/>
<jsp:setProperty name="appointment" property="patientUsername" value="${sessionScope.patientUsername}"/>
<%
if(appointment.saveAppointmentData())
request.getRequestDispatcher("/errorMsg.jsp?successMsg=Succeed&successMsg1=Appointment Booked").forward(request, response);
else
request.getRequestDispatcher("/errorMsg.jsp?successMsg=Failed&successMsg1=Appointment Booking Failed").forward(request, response);
%>
</body>
</html>