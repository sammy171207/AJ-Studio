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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        if (email.equals("admin") && phone.equals("0000000000")) {
            // Redirect to admin page
            response.sendRedirect(request.getContextPath() + "/admin.jsp");
            return; // End the method here to prevent further execution
        }

        // Regular login process for non-admin users
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM members WHERE email = ? AND phone = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, phone);
            rs = stmt.executeQuery();

            if (rs.next()) {
                String emails = rs.getString("email"); // Retrieve email from ResultSet

                // Store email as username in session
                HttpSession session = request.getSession();
                session.setAttribute("username", emails);

                response.sendRedirect(request.getContextPath() + "/dashboard.jsp"); // Redirect to login success page
            } else {
                response.sendRedirect(request.getContextPath() + "/login_error.html?error=invalid"); // Redirect to login error page with error parameter
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the SQL exception for debugging
            response.sendRedirect(request.getContextPath() + "/login_error.html?error=db"); // Redirect to login error page with database error
        } catch (Exception e) {
            e.printStackTrace(); // Log any other unexpected exceptions
            response.sendRedirect(request.getContextPath() + "/login_error.html?error=unexpected"); // Redirect to login error page with unexpected error
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace(); // Log SQL exception during cleanup
            }
        }
    }
}
