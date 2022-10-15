<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient SignUp Completed</title>
</head>
<body>

<jsp:useBean id="patient" class="root.beans.PatientSignUpCompletedBean"/>
<jsp:setProperty name="patient" property="*"/>
<jsp:setProperty name="patient" property="imagePath" value="${imagePath}"/>
<%
if(patient.savePatientData())
request.getRequestDispatcher("/patientLogin.jsp?SignupSuccessMsg=You are successfully registered with us.").forward(request, response);
else
request.getRequestDispatcher("/patientLogin.jsp?SignupErrorMsg=There's a problem while registering you.").forward(request, response);
%>
</body>
</html>