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

@WebServlet("/profile")
public class ViewProfileServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Get email from session attribute
        String email = (String) session.getAttribute("username");
        
        System.out.println("Email from session: " + email);

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Get database connection
            conn = DatabaseConnection.getConnection();
            
            if (conn!= null) {
                System.out.println("Connected to database");
            } else {
                System.out.println("Failed to connect to database");
            }

            // Prepare SQL query
            String sql = "SELECT * FROM members WHERE email =?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);

            // Execute query
            rs = stmt.executeQuery();

            // Check if user exists
            if (rs.next()) {
                // Get user details from result set
                int userId = rs.getInt("id");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String state = rs.getString("state");
                String zipCode = rs.getString("zip_code");
                String currentDate = rs.getString("date_joined");
                String membershipType = rs.getString("membership_type");

                // Set user details as request attributes
                request.setAttribute("userId", userId);
                request.setAttribute("email", email);
                request.setAttribute("firstName", firstName);
                request.setAttribute("lastName", lastName);
                request.setAttribute("phone", phone);
                request.setAttribute("address", address);
                request.setAttribute("city", city);
                request.setAttribute("state", state);
                request.setAttribute("zipCode", zipCode);
                request.setAttribute("currentDate", currentDate);
                request.setAttribute("membershipType", membershipType);

                // Forward to profile.jsp
                request.getRequestDispatcher("profile.jsp").forward(request, response);
            } else {
                // User not found
                response.getWriter().println("User not found");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error fetching user profile");
        } finally {
            // Close database resources
            try {
                if (rs!= null) rs.close();
                if (stmt!= null) stmt.close();
                if (conn!= null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}