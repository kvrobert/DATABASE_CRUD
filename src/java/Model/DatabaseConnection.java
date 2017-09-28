package Model;

import java.sql.*;

public class DatabaseConnection {

    Connection conn;
    Statement stmt;
    ResultSet res;

    String URL = "jdbc:mysql://localhost:3306/robesz?useSSL=false";

    public DatabaseConnection() {

    }

    public Connection setConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, "robesz", "katika");
            System.out.println("Connected to DB....");
        
        } catch (Exception e) {
            e.getStackTrace();
             System.out.println(e.getMessage());
        }

        return conn;
    }

    public ResultSet getResultset(String sql, Connection conn) {
        try {
            stmt = conn.createStatement();
            res = stmt.executeQuery(sql);

        } catch (Exception e) {
            e.getStackTrace();
        }

        return res;
    }
}
