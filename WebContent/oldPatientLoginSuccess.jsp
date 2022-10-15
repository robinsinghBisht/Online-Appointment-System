<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Old Patient</title>

    <link rel="stylesheet" href="css/dropdown.css">

<script>
    history.forward();
</script>
</head>
<body>
  <div id="pagina">
    <div class="barra-menu">
        <!-- Boton Desplegar/Replegar menú -->	<a href="#" id="btn-drop" class="btn-menu aln-centro">Navegacion</a>	
        <!-- Menú de navegación -->
        <ul id="submenu" class="lista-menu aln-centro">
            <li><a href="#">Welcome, ${sessionScope.patientName}<%--name--%></a></li>
            <li><a href="javascript:;" onClick="patientAppointmentAnalysis();">Booked Appointments</a></li>
            <li><a href="javascript:;" onClick="patientAppointmentBooking();">Book an appointment</a></li>
            <li><a href="oldPatientLogout">Logout</a></li>
        </ul>
    </div>
</div>

<iframe src="Welcome.html" id="iframebyrobin" scrolling="no" frameborder="0" style="position: relative; height: 1200px; width: 100%;">
	An iFrame capable browser is required to view this content.
	</iframe>	
	

  <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

  <script src="js/dropdown.js"></script>
  
  
    <!-- JAVA SCRIPTS -->
<script type="text/javascript">
function patientAppointmentBooking()
{
	document.getElementById('iframebyrobin').src="patientAppointmentBooking.jsp";
}
function patientAppointmentAnalysis()
{
	document.getElementById('iframebyrobin').src="patientAppointmentAnalysis.jsp";
}
 </script>
 

</body>

</html>


