package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class PatientUpdateDetailsCompletedBean {
	
	private String username;
	private String name;
	private String sex;
	private String email;
	private String securityques;
	private String securityans;
	private String address;
	private String city;
	private String mobile_no;
	
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
		return "PatientUpdateDetailsCompletedBean [username=" + username + ", name=" + name + ", sex=" + sex
				+ ", email=" + email + ", securityques=" + securityques + ", securityans=" + securityans + ", address="
				+ address + ", city=" + city + ", mobile_no=" + mobile_no + "]";
	}
	
	public boolean updatePatientData()
	{
		//System.out.println("bean values: "+imagePath+"\n"+mobile_no+"\n"+sex);
		
		try
		{
		Connection conn=ConnectionProvider.getConn();
		PreparedStatement ps=conn.prepareStatement("update patient set name=?,sex=?,email=?,securityques=?,securityans=?,address=?,city=?,mobile_no=? where username=?");
		
		ps.setString(1,name);
		ps.setString(2,sex);
		ps.setString(3,email.trim());
		ps.setString(4,securityques);
		ps.setString(5,securityans.trim());
		ps.setString(6,address);
		ps.setString(7,city);
		ps.setString(8,mobile_no);
		ps.setString(9,username);
		
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
