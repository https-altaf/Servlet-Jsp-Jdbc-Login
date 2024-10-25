package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class loginDao {

    String url = "jdbc:mysql://localhost:3306/servletlogin"; // replace with your DB URL
    String username = "root"; // replace with your DB username
    String password = "Mumbai"; // replace with your DB password

    public boolean check(String uname, String pass) {
        boolean isValidUser = false;

        try {
            String sqlquery = "SELECT * FROM loginservlet WHERE uname=? AND pass=?"; // Adjust table name and column names
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL driver
            Connection connection = DriverManager.getConnection(url, username, password); // Connect to DB
            PreparedStatement prepareStatement = connection.prepareStatement(sqlquery);
            	
            // Set parameters
            prepareStatement.setString(1, uname);
            prepareStatement.setString(2, pass);

            // Execute query
            ResultSet resultSet = prepareStatement.executeQuery();

            // Check if user exists
            if (resultSet.next()) {
                isValidUser = true; // User found
            }

            resultSet.close();
            prepareStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception for debugging
        }

        return isValidUser;
    }
}
