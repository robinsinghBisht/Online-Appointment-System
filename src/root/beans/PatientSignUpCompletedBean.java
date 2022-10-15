package root.beans;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class PatientSignUpCompletedBean {
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSecurityques() {
		return securityques;
	}
	public void setSecurityques(String securityques) {
		this.securityques = securityques;
	}
	public String getSecurityans() {
		return securityans;
	}
	public void setSecurityans(String securityans) {
		this.securityans = securityans;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	@Override
	public String toString() {
		return "ClientInsertPerformedBean [imagePath=" + imagePath + ", username=" + username + ", name=" + name
				+ ", sex=" + sex + ", email=" + email + ", password=" + password + ", securityques=" + securityques
				+ ", securityans=" + securityans + ", address=" + address + ", city=" + city + ", mobile_no="
				+ mobile_no + "]";
	}
	private String imagePath;
	private String username;
	private String name;
	private String sex;
	private String email;
	private String password;
	private String securityques;
	private String securityans;
	private String address;
	private String city;
	private String mobile_no;
	
	public boolean savePatientData() throws FileNotFoundException
	{
		//System.out.println("bean values: "+imagePath+"\n"+mobile_no+"\n"+sex);
		
		FileInputStream fin=new FileInputStream(imagePath);
		try
		{
		Connection c=ConnectionProvider.getConn();
		PreparedStatement ps=c.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?,?,?)");
		
		ps.setString(1,username.trim());
		ps.setString(2,name);
		ps.setString(3,sex);
		ps.setString(4,email.trim());
		ps.setString(5,password);
		ps.setString(6,securityques);
		ps.setString(7,securityans.trim());
		ps.setString(8,address);
		ps.setString(9,city);
		ps.setString(10,mobile_no);
		ps.setBinaryStream(11,fin,fin.available());
		
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
