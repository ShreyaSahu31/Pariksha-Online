/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;

import java.util.*;
import com.javabean.StudentLoginBean_1;
import com.javabean.PaperBean;
import com.javabean.QuestionsBean;
import static com.javadao.QuestionsDao.getConnection;
import java.sql.*;
/**
 *
 * @author nainc
 */
public class StudentLoginDao_1 {
   public static Connection getConnection() throws ClassNotFoundException, SQLException {
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
        
        public static int insert(StudentLoginBean_1 q) {
        int status = 0;
        try {
            Connection con = getConnection();

            PreparedStatement pst = con.prepareStatement("INSERT INTO student("+"roll, enroll, name, password,"+"college, branch,"+"year) VALUES(?,?,?,?,?,?,?)");

            pst.setInt(1, q.getRoll());
            pst.setString(2, q.getEnroll());
            pst.setString(3, q.getName());
            pst.setString(4, q.getPassword());
            pst.setInt(5, q.getCollege());
            pst.setString(6, q.getBranch());                   
            pst.setInt(7, q.getYear());

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
        
         public static int delete(StudentLoginBean_1 q) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("delete from student where enroll=?");
            pst.setString(1, q.getEnroll());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
         
      public static int Max(String s) throws SQLException {
            int m = 0 ;
           ResultSet rs = null;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("SELECT Max(roll)  FROM student where (locate(?,enroll))");
            pst.setString(1, s);
            
            rs = pst.executeQuery();
            if(rs.next()){
              m = rs.getInt("Max(roll)");
            }
            System.out.println(m);
            
        } catch(Exception e) {
            e.printStackTrace();

        }
        return m ;
      }
      
       public static boolean validate(StudentLoginBean_1 l) throws SQLException {
            System.out.println("Connection done   yeeeeeeee1");
           ResultSet rs = null;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from student where enroll=? AND password=?");
            pst.setString(1, l.getEnroll());
            pst.setString(2, l.getPassword());
             rs = pst.executeQuery();
            System.out.println("hii"); 
           
            
        } catch(Exception e) {
            e.printStackTrace();

        }
        
         if(rs.next()) 
               return true;
         else
             return false;
    }
       
        public static int allot(PaperBean p, int yr) {
        int status = 0;
        try {
            Connection con = getConnection();

            PreparedStatement pst = con.prepareStatement("update student set allot_pid=? WHERE branch=? and year=? ");

            pst.setInt(1, p.getId());
        //    pst.setInt(2, p.getSem());
            pst.setString(2, p.getBranch());
         pst.setInt(3, yr);
            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
        
        public static int fetch_pid(String s) throws SQLException {
            System.out.println("Connection done   yeeeeeeee1");
           ResultSet rs = null;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select allot_pid from student where enroll=? ");
            pst.setString(1, s);
            
             rs = pst.executeQuery();
            System.out.println("hii"); 
           
            
        } catch(Exception e) {
            e.printStackTrace();

        }
        
         if(rs.next()) 
               return rs.getInt("allot_pid");
         else
             return 0;
        }
        
         public static int del_pid(String s) {
        int status = 0;
        try {
            Connection con = getConnection();

            PreparedStatement pst = con.prepareStatement("update student set allot_pid=null WHERE enroll=? ");
            pst.setString(1, s);
         
            status = pst.executeUpdate();

            System.out.println("Record succesfully updated !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
        
        public static List<StudentLoginBean_1> SearchRecords(StudentLoginBean_1 s) {
        List<StudentLoginBean_1> list = new ArrayList();

        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from student where college=? and branch=? and year=?");
            pst.setInt(1, s.getCollege());
            pst.setString(2, s.getBranch());
            pst.setInt(3, s.getYear());
            
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                StudentLoginBean_1 q = new StudentLoginBean_1();
                
                q.setRoll(rs.getInt("roll"));
                q.setEnroll(rs.getString("enroll"));
                q.setName(rs.getString("name"));
               q.setPassword(rs.getString("password"));
                q.setCollege(rs.getInt("college"));
                q.setBranch(rs.getString("branch"));
                q.setYear(rs.getInt("year"));
                q.setAllot_pid(rs.getInt("allot_pid"));
                
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
       
}

