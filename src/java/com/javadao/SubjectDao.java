/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;
import com.javabean.SubjectBean;
import java.sql.*;
import java.util.*;

public class SubjectDao {
    
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
     
       
       public static int insert(SubjectBean l) {
        int status = 0;
        try {
            Connection con = fetchConnection();

            PreparedStatement pst = con.prepareStatement("insert into subject(s_name) VALUES(?)");

            pst.setString(1, l.getS_name());
          

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
       
          public static int delete(SubjectBean l) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("delete from subject where s_id=?");
            pst.setInt(1, l.getS_id());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
          
          
         public static List<SubjectBean> getAllRecords() {
        List<SubjectBean> list = new ArrayList();

        try {
            Connection con = fetchConnection();
            PreparedStatement ps = con.prepareStatement("select * from subject");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                SubjectBean q = new SubjectBean();
                
                q.setS_id(rs.getInt("S_id"));
                q.setS_name(rs.getString("S_name"));
              
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);
            
        }
        
         return list;
     }
    
    
}
