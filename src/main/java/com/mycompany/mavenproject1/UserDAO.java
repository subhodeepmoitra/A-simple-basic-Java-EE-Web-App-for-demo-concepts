/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mavenproject1;

import com.mycompany.mavenproject1.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author subhodeep
 */
public class UserDAO {
    private String url = "jdbc:postgresql://localhost:5432/test_java";
    private String dbuser = "postgres";
    private String dbpass = "password";
    
    public int registerUser(User user){
        int result = 0;
        String sql = "INSERT INTO USERS (USERNAME, PASSWORD) VALUES (?,?)";
        try{
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, dbuser, dbpass);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            result = ps.executeUpdate(); // the result stores the success/failure status code
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
}
