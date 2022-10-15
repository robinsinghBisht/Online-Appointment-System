<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details Updated</title>
</head>
<body>

<jsp:useBean id="patient" class="root.beans.PatientUpdateDetailsCompletedBean"/>
<jsp:setProperty name="patient" property="username" value="${sessionScope.patientUsername}"/>
<jsp:setProperty name="patient" property="*"/>
<%
if(patient.updatePatientData())
request.getRequestDispatcher("/errorMsg.jsp?successMsg=Succeed&successMsg1=Details Updated&successMsg2=Reload to see changes.").forward(request, response);
else
request.getRequestDispatcher("/errorMsg.jsp?successMsg=Failed&successMsg1=There's a problem while updating details.").forward(request, response);
%>
</body>
</html>