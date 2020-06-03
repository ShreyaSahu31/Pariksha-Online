/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;

import com.javabean.CollegeBean;
import java.sql.*;
import java.util.*;

public class CollegeDao {
    
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
       public static int insert(CollegeBean l) {
        int status = 0;
        try {
            Connection con = fetchConnection();

            PreparedStatement pst = con.prepareStatement("insert into college VALUES(?,?)");
            pst.setInt(1, l.getC_id());
            pst.setString(2, l.getC_name());
          

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
 public static int delete(CollegeBean l) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("delete from college where c_id=?");
            pst.setInt(1, l.getC_id());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
 
   public static List<CollegeBean> getAllRecords() {
        List<CollegeBean> list = new ArrayList();

        try {
            Connection con = fetchConnection();
            PreparedStatement ps = con.prepareStatement("select * from college");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                CollegeBean q = new CollegeBean();
                
                q.setC_id(rs.getInt("c_id"));
                q.setC_name(rs.getString("c_name"));
              
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);
            
        }
        
         return list;
     }
    
}
