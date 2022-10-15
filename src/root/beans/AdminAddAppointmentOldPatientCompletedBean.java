package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import load_on_startup.ConnectionProvider;

public class AdminAddAppointmentOldPatientCompletedBean {

private String booked_date;
private String slot;
private String uhid;
private int doctor_id;
private String illness;

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
public String getUhid() {
	return uhid;
}
public void setUhid(String uhid) {
	this.uhid = uhid;
}
public int getDoctor_id() {
	return doctor_id;
}
public void setDoctor_id(int doctor_id) {
	this.doctor_id = doctor_id;
}
public String getIllness() {
	return illness;
}
public void setIllness(String illness) {
	this.illness = illness;
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
	ps.setString(3,uhid);
	ps.setInt(4,doctor_id);
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