

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


@WebServlet("/reg")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
  
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String firstName = request.getParameter("first_name");
	        String lastName = request.getParameter("last_name");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String address = request.getParameter("address");
	        String city = request.getParameter("city");
	        String state = request.getParameter("state");
	        String zipCode = request.getParameter("zip_code");
	        String membershipType = request.getParameter("membership_type");

	        Connection conn = null;
	        PreparedStatement stmt = null;

	        try {
	            conn = DatabaseConnection.getConnection();

	            String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	            String sql = "INSERT INTO members (first_name, last_name, email, phone, address, city, state, zip_code, date_joined, membership_type) " +
	                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	            		
	            stmt.executeUpdate();

	            response.sendRedirect("login.html"); // Redirect to registration success page
	        } catch (SQLException e) {
	            e.printStackTrace();
	            response.sendRedirect("reg.html"); // Redirect to registration error page
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
