import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userList")
public class UserListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isAdmin = true; // Replace this with your logic
         PrintWriter out= response.getWriter();
         out.print("hello");
        if (isAdmin) {
            // Retrieve all users from the database
            List<String[]> userList;
            try {
                userList = getAllMembers();
                // Set userList as a request attribute
                request.setAttribute("userList", userList);
                
                // Print user data in the console
                printUserData(userList);
                
                // Forward the request to the JSP page
           response.sendRedirect("user.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle error
                response.sendRedirect("error.html");
            }
        } else {
            // If the user is not an admin, redirect them to an error page or login page
            response.sendRedirect("error.html");
        }
    }

    private List<String[]> getAllMembers() throws SQLException {
        List<String[]> memberList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM members";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String[] memberData = new String[2];
                memberData[0] = rs.getString("first_name");
                memberData[1] = rs.getString("last_name");
                // Add other member data if needed
                memberList.add(memberData);
            }
        } finally {
            // Close resources
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
        
        return memberList;
    }

    private void printUserData(List<String[]> userList) {
        if (userList != null && !userList.isEmpty()) {
            System.out.println("User List:");
            for (String[] userData : userList) {
                System.out.println("First Name: " + userData[0] + ", Last Name: " + userData[1]);
            }
        } else {
            System.out.println("No users found.");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
