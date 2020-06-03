/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;
import com.javabean.BranchBean;
import java.sql.*;
import java.util.*;

public class BranchDao {
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
     
       public static int insert(BranchBean l) {
        int status = 0;
        try {
            Connection con = fetchConnection();

            PreparedStatement pst = con.prepareStatement("insert into branch(b_name) VALUES(?)");

            pst.setString(1, l.getB_name());
          

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
       
        public static int delete(BranchBean l) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = fetchConnection();
            PreparedStatement pst = con.prepareStatement("delete from branch where b_id=?");
            pst.setInt(1, l.getB_id());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
 
         public static List<BranchBean> getAllRecords() {
        List<BranchBean> list = new ArrayList();

        try {
            Connection con = fetchConnection();
            PreparedStatement ps = con.prepareStatement("select * from branch");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                BranchBean q = new BranchBean();
                
                q.setB_id(rs.getInt("b_id"));
                q.setB_name(rs.getString("b_name"));
              
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);
            
        }
        
         return list;
     }
    
}
