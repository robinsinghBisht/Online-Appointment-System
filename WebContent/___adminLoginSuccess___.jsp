<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8"/>
	<title>Admin Panel</title>
	
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
	<!--[if lt IE 9]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
	<script src="js/hideshow.js" type="text/javascript"></script>
	<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
	<script type="text/javascript" src="js/admin-iframebyrobin.js"></script>
	<script type="text/javascript">
	$(document).ready(function() 
    	{ 
      	  $(".tablesorter").tablesorter(); 
   	 } 
	);
	$(document).ready(function() {

	//When page loads...
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content

		var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});

});
    </script>
<script type="text/javascript">
    $(function(){
        $('.column').equalHeight();
    });
</script>
<script>
    history.forward();
</script>
</head>


<body>
	<header id="header">
		<hgroup>
			<h1 class="site_title"><a href="#">Web Admin</a></h1>
			<h2 class="section_title">Dashboard</h2><div class="btn_view_site"><a href="index.jsp" target="_blank">View Site</a></div>
		</hgroup>
	</header> <!-- end of header bar -->
	
	<section id="secondary_bar">
		<div class="user">
			<p>${sessionScope.adminName}</p>
			 <a class="logout_user" href="adminLogout" title="Logout">Logout</a> 
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs"><a href="" id="firstlocation">Website Admin</a><div class="breadcrumb_divider"></div> <a class="current" id="secondlocation">Dashboard</a></article>
		</div>
	</section><!-- end of secondary bar -->
	
	<aside id="sidebar" class="column">
		<!--<form class="quick_search">
			<input type="text" value="Quick Search"  placeholder="Maybe work soon!" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
		</form>
		<hr/>-->
		<h3>Patients</h3>
		<ul class="toggle">
			<li class="icn_view_users"><a href="javascript:;" onClick="viewPatients();">View Patients</a></li>
		</ul>
		<h3>Old Patients</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="javascript:;" onClick="addOldPatient();">Add Old Patient</a></li>
			<li class="icn_view_users"><a href="javascript:;" onClick="viewOldPatients();">View Old Patients</a></li>
			<li class="icn_new_article"><a href="javascript:;" onClick="addNewAppointment();">Add Appointment</a></li>
		</ul>
		<h3>Doctors</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="javascript:;" onClick="addNewDoctor();">Add New Doctor</a></li>
			<li class="icn_view_users"><a href="javascript:;" onClick="viewDoctors();">View Doctors</a></li>
		</ul>
		<h3>Appointments</h3>
		<ul class="toggle">
			<li class="icn_categories"><a href="javascript:;" onClick="viewAppointments();">View All Appointments</a></li>
		</ul>
		<h3>Tell us - Feedbacks</h3>
		<ul class="toggle">
			<li class="icn_tags"><a href="javascript:;" onClick="viewEnquiries();">Enquiries</a></li>
			<li class="icn_tags"><a href="javascript:;" onClick="viewFeedbacks();">Feedbacks</a></li>
			<li class="icn_tags"><a href="javascript:;" onClick="viewComplaints();">Complaints</a></li>
		</ul>
		<h3>Admin</h3>
		<ul class="toggle">
			<!--<li class="icn_settings"><a href="#">Options</a></li>-->
			<li class="icn_security"><a href="javascript:;" onClick="adminChangePassword();">Change Password</a></li>
			<li class="icn_jump_back"><a href="adminLogout">Logout</a></li>
		</ul>
		
		
		<footer>
			<hr/>
			<p><strong>Copyright &copy; 2018 Online Appointment System</strong></p>
			<p></p>
		</footer>
	</aside><!-- end of sidebar -->
	
	<section id="main" class="column">
	<iframe src="Welcome.html" id="iframebyrobin" scrolling="yes" frameborder="0" style="position: relative; height: 100%; width: 100%;">
	An iFrame capable browser is required to view this content.
	</iframe>
	</section>


</body>

</html>