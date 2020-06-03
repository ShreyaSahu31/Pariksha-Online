/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;

import java.util.*;
import com.javabean.AdminBean;
import java.sql.*;

/**
 *
 * @author nainc
 */
public class AdminDao {

    public static Connection fetchConnection() throws ClassNotFoundException, SQLException {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/midsem?allowPublicKeyRetrieval=true&useSSL=false", "root", "shreya*123");
            if (con != null) {
                System.out.println("Connection done");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;

    }

    public static int insert(AdminBean l) {
        int status = 0;
        try {
            Connection con = fetchConnection();

            PreparedStatement pst = con.prepareStatement("insert into admin_login VALUES(?,?)");

            pst.setString(1, l.getUsername());
            pst.setString(2, l.getPassword());

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(AdminBean l) throws ClassNotFoundException {
        int status = 0;
        try {
            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("update adminlogin set password=?, where username=? ");
            pst.setString(1, l.getPassword());
            pst.setString(2, l.getUsername());

            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(AdminBean l) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("delete from admin_login where username=?");
            pst.setString(1, l.getUsername());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static boolean validate(AdminBean l) throws SQLException {
           ResultSet rs = null;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("select * from admin_login where username=? AND password=?");
            pst.setString(1, l.getUsername());
            pst.setString(2, l.getPassword());
             rs = pst.executeQuery();
           
            
        } catch(Exception e) {
            e.printStackTrace();

        }
        
         if(rs.next()) 
               return true;
         else
             return false;
    }
}

