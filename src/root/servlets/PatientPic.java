package root.servlets;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import load_on_startup.ConnectionProvider;

@SuppressWarnings("serial") // suppressing eclipse warning
@WebServlet(name = "PatientPic", urlPatterns = { "/patientPic" }) // mapping via annotation

public class PatientPic extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		ResultSet rs = null;
		Connection con = null;
		OutputStream os = null;
		PreparedStatement ps;
		String username = req.getParameter("username");
		try {
			con = ConnectionProvider.getConn();

			ps = con.prepareStatement("select image from patient where username=?");
			ps.setString(1, username);
			rs = ps.executeQuery();

			res.setContentType("image/jpeg");
			os = res.getOutputStream();

			while (rs.next()) {
				os.write(rs.getBytes("image"));
			}

			os.flush();
			os.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
