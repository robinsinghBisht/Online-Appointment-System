package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class AdminAddNewDoctorCompletedBean {

	private String specialty;
	private String name;
	private String email;
	
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public boolean saveDoctorData()
	{
		try
		{
		Connection c=ConnectionProvider.getConn();
		PreparedStatement ps=c.prepareStatement("insert into doctor values(doctor_seq.NEXTVAL,?,?,?)");
		
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,specialty);
		
		ps.executeUpdate();
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		return false;
		}
		
		return true;
	}
}
