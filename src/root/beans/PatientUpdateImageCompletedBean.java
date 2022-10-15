package root.beans;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class PatientUpdateImageCompletedBean {
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	private String imagePath;
	private String username;
	
	public boolean updatePatientImage() throws FileNotFoundException
	{
		//System.out.println("bean values: "+imagePath+"\n"+mobile_no+"\n"+sex);
		
		FileInputStream fin=new FileInputStream(imagePath);
		try
		{
		Connection c=ConnectionProvider.getConn();
		PreparedStatement ps=c.prepareStatement("update patient set image =? where username=?");
		
		ps.setBinaryStream(1,fin,fin.available());
		ps.setString(2,username);
		
		ps.executeUpdate();
		
		File f=new File(imagePath);
		f.delete(); //deleting uploaded image from temp_image folder
		}
		catch(IOException e)
		{
		System.out.println(e);
		}
		catch(SQLException e)
		{
		System.out.println(e);
		return false;
		}
		
		return true;
	}
}
