

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/admin")
public class AdminServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   int totalUsers = getTotalUsersFromDatabase();
		   int totalEnquiries = getTotalEnquiriesFromDatabase();
		   HttpSession session = request.getSession();
	        session.setAttribute("totalUsers", totalUsers);// Implement this method to get the count from the database
	        session.setAttribute("totalEnquiries", totalEnquiries);
            response.sendRedirect("admin/admin.jsp");

	}

	private int getTotalEnquiriesFromDatabase() {
		 int count = 0;
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        ResultSet rs = null;

	        try {
	            conn = DatabaseConnection.getConnection(); // Establish database connection

	            // Query to get the total count of enquiries from the database table
	            String sql = "SELECT COUNT(*) AS total_enquiries FROM enquiries";
	            stmt = conn.prepareStatement(sql);
	            rs = stmt.executeQuery();

	            if (rs.next()) {
	                count = rs.getInt("total_enquiries"); // Retrieve the count from the result set
	            }
	        } catch (SQLException e) {
	            e.printStackTrace(); // Handle any SQL exceptions
	        } finally {
	            try {
	                // Close resources
	                if (rs != null) rs.close();
	                if (stmt != null) stmt.close();
	                if (conn != null) conn.close();
	            } catch (SQLException se) {
	                se.printStackTrace(); // Handle any SQL exceptions during resource closing
	            }
	        }
	        System.out.println("Enquiry count retrieved from database: " + count);
	        return count;
	    }

	

	private int getTotalUsersFromDatabase() {
		 int count = 0;
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        ResultSet rs = null;

	        try {
	            conn = DatabaseConnection.getConnection(); // Establish database connection

	            // Query to get the total count of users from the database table
	            String sql = "SELECT COUNT(*) AS total_users FROM members";
	            stmt = conn.prepareStatement(sql);
	            rs = stmt.executeQuery();

	            if (rs.next()) {
	                count = rs.getInt("total_users"); // Retrieve the count from the result set
	            }
	        } catch (SQLException e) {
	            e.printStackTrace(); // Handle any SQL exceptions
	        } finally {
	            try {
	                // Close resources
	                if (rs != null) rs.close();
	                if (stmt != null) stmt.close();
	                if (conn != null) conn.close();
	            } catch (SQLException se) {
	                se.printStackTrace(); // Handle any SQL exceptions during resource closing
	            }
	        }
	        System.out.println("dude");
	        System.out.println(count);
	        return count;
	    }
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
