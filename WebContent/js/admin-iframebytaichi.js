function viewPatients()
{
	document.getElementById('firstlocation').innerHTML="Patients";
	document.getElementById('secondlocation').innerHTML="Analysis";
	document.getElementById('iframebyrobin').src="adminPatientAnalysis.jsp";
}



function viewOldPatients()
{
	document.getElementById('firstlocation').innerHTML="Old Patients";
	document.getElementById('secondlocation').innerHTML="Analysis";
	document.getElementById('iframebyrobin').src="adminOldPatientAnalysis.jsp";
}
function addOldPatient()
{
	document.getElementById('firstlocation').innerHTML="Old Patients";
	document.getElementById('secondlocation').innerHTML="Add Record";
	document.getElementById('iframebyrobin').src="adminAddOldPatient.jsp";
}
function addNewAppointment()
{
	document.getElementById('firstlocation').innerHTML="Old Patients";
	document.getElementById('secondlocation').innerHTML="Add Appointment";
	document.getElementById('iframebyrobin').src="adminAddAppointmentOldPatient.jsp";
}



function addNewDoctor()
{
	document.getElementById('firstlocation').innerHTML="Doctors";
	document.getElementById('secondlocation').innerHTML="Add Record";
	document.getElementById('iframebyrobin').src="adminAddNewDoctor.jsp";
}
function viewDoctors()
{
	document.getElementById('firstlocation').innerHTML="Doctors";
	document.getElementById('secondlocation').innerHTML="Analysis";
	document.getElementById('iframebyrobin').src="adminDoctorAnalysis.jsp";
}



function viewAppointments()
{
	document.getElementById('firstlocation').innerHTML="Appointments";
	document.getElementById('secondlocation').innerHTML="Analysis";
	document.getElementById('iframebyrobin').src="adminAppointmentAnalysis.jsp";
}



function viewEnquiries()
{
	document.getElementById('firstlocation').innerHTML="Tell us - Feedbacks";
	document.getElementById('secondlocation').innerHTML="View Enquiries";
	document.getElementById('iframebyrobin').src="adminTellUsAnalysis.jsp?regarding=Enquiry";
}
function viewFeedbacks()
{
	document.getElementById('firstlocation').innerHTML="Tell us - Feedbacks";
	document.getElementById('secondlocation').innerHTML="View Feedbacks";
	document.getElementById('iframebyrobin').src="adminTellUsAnalysis.jsp?regarding=Feedback";
}
function viewComplaints()
{
	document.getElementById('firstlocation').innerHTML="Tell us - Feedbacks";
	document.getElementById('secondlocation').innerHTML="View Complaints";
	document.getElementById('iframebyrobin').src="adminTellUsAnalysis.jsp?regarding=Complaint";
}



function adminChangePassword()
{
	document.getElementById('firstlocation').innerHTML="Admin";
	document.getElementById('secondlocation').innerHTML="Change Password";
	document.getElementById('iframebyrobin').src="adminChangePassword.jsp";
}