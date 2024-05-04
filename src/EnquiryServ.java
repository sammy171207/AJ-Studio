

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/enquiry")
public class EnquiryServ extends HttpServlet {
	
 
 


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String subject = request.getParameter("subject");
	        String message = request.getParameter("message");

	        Connection conn = null;
	        PreparedStatement stmt = null;

	        try {
	            conn = DatabaseConnection.getConnection();

	            String currentDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	            String sql = "INSERT INTO enquiries (name, email, subject, message, created_at) " +
	                         "VALUES (?, ?, ?, ?, ?)";
	            stmt = conn.prepareStatement(sql);
	            stmt.setString(1, name);
	            stmt.setString(2, email);
	            stmt.setString(3, subject);
	            stmt.setString(4, message);
	            stmt.setString(5, currentDate);
	            stmt.executeUpdate();

	            response.sendRedirect("thank_you.html"); // Redirect to thank you page
	        } catch (SQLException e) {
	            e.printStackTrace();
	            response.sendRedirect("error.html"); // Redirect to error page
	        } finally {
	            try {
	                if (stmt != null) stmt.close();
	                if (conn != null) conn.close();
	            } catch (SQLException se) {
	                se.printStackTrace();
	            }
	        }
	    }

}
