/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;

import java.util.*;
import com.javabean.loginbean;
import java.sql.*;

/**
 *
 * @author nainc
 */
public class logindao {

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

    public static int insert(loginbean l) {
        int status = 0;
        try {
            Connection con = fetchConnection();

            PreparedStatement pst = con.prepareStatement("insert into teacher VALUES(?,?)");

            pst.setString(1, l.getUsername());
            pst.setString(2, l.getPassword());

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(loginbean l) throws ClassNotFoundException {
        int status = 0;
        try {
            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("update teacher set password=?, where username=? ");
            pst.setString(1, l.getPassword());
            pst.setString(2, l.getUsername());

            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(loginbean l) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("delete from teacher where username=?");
            pst.setString(1, l.getUsername());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static boolean validate(loginbean l) throws SQLException {
           ResultSet rs = null;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("select * from teacher where username=? AND password=?");
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
    
    public static List<loginbean> ShowRecords() {
        List<loginbean> list = new ArrayList();

        try {
            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("select * from teacher");
           
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                loginbean q = new loginbean();
                
                
                q.setUsername(rs.getString("username"));
                q.setPassword(rs.getString("password"));
             
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
}

