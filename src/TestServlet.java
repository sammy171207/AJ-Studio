

import java.io.IOException;
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

@WebServlet("/test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
	        if ("list".equals(action)) {
	            listTestRegistrations(request, response);
	        } else {
	            response.getWriter().append("Invalid action.");
	        }
	}

	
	private void listTestRegistrations(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            Connection conn = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM test";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            List<String[]> testRegistrations = new ArrayList<>();
            while (rs.next()) {
                String[] registrationData = new String[5];
                registrationData[0] = rs.getString("testName");
                registrationData[1] = rs.getString("fullName");
                registrationData[2] = rs.getString("email");
                registrationData[3] = rs.getString("date");
                registrationData[4] = rs.getString("time");
                testRegistrations.add(registrationData);
            }

            conn.close();

            // Set test registrations as a request attribute
            request.setAttribute("testRegistrations", testRegistrations);

            // Forward the request to a JSP page to display the list
            request.getRequestDispatcher("test_list.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.html");
        }
    }
		
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String testName = request.getParameter("testName");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        try {
            Connection conn = DatabaseConnection.getConnection();
            String sql = "INSERT INTO test (testName, fullName, email, date, time) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, testName);
            statement.setString(2, fullName);
            statement.setString(3, email);
            statement.setString(4, date);
            statement.setString(5, time);
            statement.executeUpdate();
            conn.close();
            response.sendRedirect("registration_success.html");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.html");
        }
    }
	}


