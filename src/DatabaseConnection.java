import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Could not load the MySQL JDBC driver", e);
        }
    }

    private static final String URL = "jdbc:mysql://localhost:3306/mygym";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "abc123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
