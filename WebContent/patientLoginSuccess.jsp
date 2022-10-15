<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Patient Panel</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<style>
#page-wrapper, #page-inner
{
	background:url(images/bgnoise_lg.png);
}
</style>
<script>
    history.forward();
</script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">${patientName}</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> <img src="images/pointing_finger.png" width="17%" height="17%"> End Your Session &nbsp; <a href="patientLogout" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="patientPic?username=${sessionScope.patientUsername}" class="user-image img-responsive"/>
					</li>
				
					<li>
                        <a  href="javascript:;" onClick="patientAppointmentBooking();"><i class="fa fa-dashboard fa-3x"></i>Appointment Booking Panel</a>
                    </li>
					
					<li>
                        <a  href="javascript:;" onClick="patientAppointmentAnalysis();"><i class="fa fa-bar-chart-o fa-3x"></i>Booked Appointments</a>
                    </li>	
                      <li  >
                        <a  href="javascript:;" onClick="patientViewDetails();"><i class="fa fa-table fa-3x"></i>View your Details</a>
                    </li>
                    <li  >
                        <a  href="javascript:;" onClick="patientUpdateDetails();"><i class="fa fa-edit fa-3x"></i>Update your Details</a>
                    </li>				
					                   
                    <li>
                        <a href="#"><i class="fa fa-qrcode fa-3x"></i>General<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="javascript:;" onClick="patientChangePassword();">Change Password</a>
                            </li>
                            <li>
                                <a href="javascript:;" onClick="patientUpdateImage();">Change Profile Picture</a>
                            </li>
                        </ul>
                      </li> 
                            <li><strong>Copyright &copy; 2018</strong></li>
                 	
                </ul>
               
            </div>
            
        </nav>  
        
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
            
                <div class="row">
                    <div class="col-md-12">
                    	<%-- <h2>Succesfully Logged In :)</h2>   
                        <h1>Welcome ${sessionScope.patientUsername}, Love to see you back. </h1> --%>
                       
                      <iframe src="Welcome.html" id="iframebyrobin" scrolling="no" frameborder="0" style="position: relative; height: 1200px; width: 100%;">
						An iFrame capable browser is required to view this content.
					  </iframe>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
                 
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JAVA SCRIPTS -->
<script type="text/javascript">
function patientViewDetails()
{
	document.getElementById('iframebyrobin').src="patientViewDetails.jsp";
}
function patientAppointmentBooking()
{
	document.getElementById('iframebyrobin').src="patientAppointmentBooking.jsp";
}
function patientAppointmentAnalysis()
{
	document.getElementById('iframebyrobin').src="patientAppointmentAnalysis.jsp";
}
function patientUpdateDetails()
{
	document.getElementById('iframebyrobin').src="patientUpdateDetails.jsp";
}
function patientChangePassword()
{
	document.getElementById('iframebyrobin').src="patientChangePassword.jsp";
}
function patientUpdateImage()
{
	document.getElementById('iframebyrobin').src="patientUpdateImage.jsp";
}
 </script>
    
    <script src="js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</body>
</html>
