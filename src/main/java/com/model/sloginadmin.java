package com.model;

import java.sql.*;

public class sloginadmin<slogin> {
    private static final String URL = "jdbc:mysql://localhost:3306/userdb";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "rosh";
    
    public boolean validateUser(slogin s) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            System.out.println("Attempting to connect to the database...");
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connection established successfully.");

            // Prepare and execute query
            String sql = "SELECT COUNT(*) FROM users WHERE username = ? AND password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, s.getUsername());
            ps.setString(2, s.getPassword());
            rs = ps.executeQuery();
            
            if (rs.next()) {
                return rs.getInt(1) == 1;
            }
            return false;
        } catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
            throw e;
        } catch (ClassNotFoundException e) {
            System.err.println("Class Not Found Exception: " + e.getMessage());
            throw e;
        } finally {
            // Close resources
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
                System.out.println("Connection closed.");
            }
        }
    }
}
