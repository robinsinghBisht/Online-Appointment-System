package load_on_startup;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

@SuppressWarnings("serial")
public class ApplicationInitializer extends HttpServlet
{
public void init(ServletConfig sc) throws ServletException
{
ServletContext ctx=sc.getServletContext();
String valueOfOracle=ctx.getInitParameter("oracle_table");
String valueOfSql=ctx.getInitParameter("sql_table");
String prop=ctx.getRealPath("WEB-INF\\db_properties\\db.properties");
String oracle=ctx.getRealPath("WEB-INF\\db_table_scripts\\oracle_table.sql");
String sql=ctx.getRealPath("WEB-INF\\db_table_scripts\\sql_table.sql");
LoadProperties.propLoad(prop);

if(valueOfOracle.equals("yes"))
{
TableCreate.createTable(oracle);
System.out.println("Table created successfully.");
}

if(valueOfSql.equals("yes"))
{
TableCreate.createTable(sql);
//System.out.println("Table created successfully.");
}


}

}