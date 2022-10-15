package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class PatientChangePasswordCompletedBean {
	
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean updatePatientPassword()
	{
		//System.out.println("bean values: "+imagePath+"\n"+mobile_no+"\n"+sex);
		
		try
		{
		Connection conn=ConnectionProvider.getConn();
		PreparedStatement ps=conn.prepareStatement("update patient set password=? where username=?");
		
		ps.setString(1,password);
		ps.setString(2,username);
		
		ps.executeUpdate();
		//c.close();
		
		}
		catch(SQLException e)
		{
		System.out.println(e);
		return false;
		}
		
		return true;
	}
}
