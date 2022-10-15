package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import load_on_startup.ConnectionProvider;

public class PatientAppointmentBookingCompletedBean {

private String booked_date;
private String slot;
private int selectDoctor;
private String patientUsername;
private String illness;

public String getIllness() {
	return illness;
}
public void setIllness(String illness) {
	this.illness = illness;
}
public String getBooked_date() {
	return booked_date;
}
public void setBooked_date(String booked_date) {
	this.booked_date = booked_date;
}
public String getSlot() {
	return slot;
}
public void setSlot(String slot) {
	this.slot = slot;
}
public int getSelectDoctor() {
	return selectDoctor;
}
public void setSelectDoctor(int selectDoctor) {
	this.selectDoctor = selectDoctor;
}
public String getPatientUsername() {
	return patientUsername;
}
public void setPatientUsername(String patientUsername) {
	this.patientUsername = patientUsername;
}

@Override
public String toString() {
	return "PatientAppointmentBookingCompletedBean [booked_date=" + booked_date + ", slot=" + slot + ", selectDoctor="
			+ selectDoctor + ", patientUsername=" + patientUsername + ", illness=" + illness + "]";
}

public boolean saveAppointmentData()
{
	try
	{
	Connection c=ConnectionProvider.getConn();
	PreparedStatement ps=c.prepareStatement("insert into appointments values(appointment_seq.NEXTVAL,?,?,?,?,?)");
	
	Date myDate = new SimpleDateFormat("yyyy-MM-dd").parse(booked_date);
	java.sql.Date mySqlDate = new java.sql.Date(myDate.getTime());
	
	ps.setDate(1,mySqlDate);
	ps.setString(2,slot);
	ps.setString(3,patientUsername);
	ps.setInt(4,selectDoctor);
	ps.setString(5,illness);
	ps.executeUpdate();
	c.close();

	return true;
	}
	catch(SQLException e)
	{
	System.out.println(e);
	return false;
	}
	catch(ParseException e)
	{
	System.out.println(e);
	return false;
	}
}
}