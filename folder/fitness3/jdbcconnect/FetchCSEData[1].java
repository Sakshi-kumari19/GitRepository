import java.sql.*;

public class FetchCSEData {
    public static void main(String[] args) {
        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/student"; // Change //port or host if needed
        String username = "root"; // Replace with your DB username
        String password = "root"; // Replace with your DB password

        // SQL query to fetch data
        String sql = "SELECT * FROM cse";

        try {
            // Load JDBC driver (optional for newer versions)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection connection = DriverManager.getConnection(jdbcURL, username, password);

            // Create statement and execute query
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            // Print results
            System.out.println("ID\tName\t\tEmail\t\t\tSemester");
            System.out.println("--------------------------------------------------------");
            while (resultSet.next()) {
                
                String name = resultSet.getString("name");
                
                int marks = resultSet.getInt("marks");

          System.out.printf(name, marks);
            }

            // Close resources
            resultSet.close();
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}



