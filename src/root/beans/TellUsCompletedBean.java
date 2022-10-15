package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class TellUsCompletedBean {

	private String name;
	private String email;
	private String regarding;
	private String subject;
	private String message;
	
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
	public String getRegarding() {
		return regarding;
	}
	public void setRegarding(String regarding) {
		this.regarding = regarding;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public boolean saveContactData()
	{
		try
		{
		Connection c=ConnectionProvider.getConn();
		PreparedStatement ps=c.prepareStatement("insert into contact values(?,?,?,?,?)");
		
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,regarding);
		ps.setString(4,subject);
		ps.setString(5,message);
		
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
