package load_on_startup;

import java.sql.*;
import java.util.StringTokenizer;
import java.io.*;

public class TableCreate
{
public static void createTable(String path)
{
try
{
FileInputStream fn=new FileInputStream(path);
byte br[]=new byte[fn.available()];
fn.read(br);
fn.close();
String data=new String(br);
StringTokenizer str=new StringTokenizer(data,"/");
Connection con=ConnectionProvider.getConn();
Statement stm=con.createStatement();

	while(str.hasMoreElements())
	{
	String query=str.nextToken();
		if(query.trim().equals("stop"))
		{
		break;
		}
		try
		{
		stm.executeUpdate(query);
		}
		catch(Exception e)
		{
			System.out.println("Exception in executeUpdate: "+e);
			return;
		}
	System.out.println(query);
	}
}
catch(Exception e)
{
	System.out.println("Exception in TableCreate class");
	e.printStackTrace();
}

}

}