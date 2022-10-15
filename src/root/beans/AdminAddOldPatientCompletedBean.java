package root.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import load_on_startup.ConnectionProvider;

public class AdminAddOldPatientCompletedBean {

	private String name;
	private String sex;
	private String mobile_no;
	private String address;
	private String city;
	
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
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
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
	
	public boolean saveOldPatientData()
	{
		try
		{
		Connection c=ConnectionProvider.getConn();
		PreparedStatement ps=c.prepareStatement("insert into old_patient values(old_patient_seq.NEXTVAL,?,?,?,?,?)");
		
		ps.setString(1,name);
		ps.setString(2,sex);
		ps.setString(3,mobile_no);
		ps.setString(4,address);
		ps.setString(5,city);
		
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
