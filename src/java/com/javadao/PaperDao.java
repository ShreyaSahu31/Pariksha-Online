/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;

import com.javabean.PaperBean;
import com.javabean.QuestionsBean;
import java.util.*;
import com.javabean.loginbean;
import java.sql.*;

/**
 *
 * @author nainc
 */
public class PaperDao {
    
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
    
    public static int insert(PaperBean p) {
        int status = 0;
        try {
            Connection con = getConnection();

            PreparedStatement pst = con.prepareStatement("INSERT INTO paper (title,"+"sem,branch,subject,"+"q1,"+"q2,"+"q3,"+"q4,"+"q5,"+"q6,"+"q7,"+"q8,"+"q9,"+"q10,"+"q11,"+"q12,"+"q13,"+"q14,"+"q15,"+"q16,"+"q17,"+"q18,"+"q19,"+"q20)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            System.out.println( p.getTitle());
            
            System.out.println( p.getQ1());
            System.out.println( p.getQ2());
            pst.setString(1, p.getTitle());
            pst.setInt(2, p.getSem());
            pst.setString(3, p.getBranch());
            pst.setString(4, p.getSubject());
            pst.setInt(5, p.getQ1());
            pst.setInt(6, p.getQ2());
            pst.setInt(7, p.getQ3());
            pst.setInt(8, p.getQ4());
            pst.setInt(9, p.getQ5());
            pst.setInt(10, p.getQ6());
            pst.setInt(11, p.getQ7());
            pst.setInt(12, p.getQ8());
            pst.setInt(13, p.getQ9());
            pst.setInt(14, p.getQ10());
            pst.setInt(15, p.getQ11());
            pst.setInt(16, p.getQ12());
            pst.setInt(17, p.getQ13());
            pst.setInt(18, p.getQ14());
            pst.setInt(19, p.getQ15());
            pst.setInt(20, p.getQ16());
            pst.setInt(21, p.getQ17());
            pst.setInt(22, p.getQ18());
            pst.setInt(23, p.getQ19());
            pst.setInt(24, p.getQ20());
            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
     public static List<QuestionsBean> getAllRecords() {
        List<QuestionsBean> list = new ArrayList();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from questions");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                QuestionsBean q = new QuestionsBean();
                
                q.setId(rs.getInt("id"));
                q.setSem(rs.getInt("sem"));
                q.setBranch(rs.getString("title"));
                q.setSubject(rs.getString("subject"));
                q.setQues(rs.getString("ques"));
                q.setOp1(rs.getString("op1"));
                q.setOp2(rs.getString("op2"));
                q.setOp3(rs.getString("op3"));
                q.setOp4(rs.getString("op4"));
                q.setAns(rs.getInt("ans"));
                q.setMarks(rs.getInt("marks"));

                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);
            
        }
        
         return list;
     }
            
       public static List<PaperBean> SearchRecords(PaperBean q1) {
        List<PaperBean> list = new ArrayList();

        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from paper where sem=? and branch=? and subject=?");
            pst.setInt(1, q1.getSem());
            pst.setString(2, q1.getBranch());
            pst.setString(3, q1.getSubject());
            
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                PaperBean q = new PaperBean();
                
                q.setId(rs.getInt("pid"));
                
                q.setTitle(rs.getString("title"));
                
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
       
       public static List<PaperBean> ShowAllRecords() {
        List<PaperBean> list = new ArrayList();

        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from paper");
            
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                
                PaperBean q = new PaperBean();
                
                q.setId(rs.getInt("pid"));               
                q.setTitle(rs.getString("title"));
                q.setSem(rs.getInt("sem")); 
                q.setBranch(rs.getString("branch"));
                q.setSubject(rs.getString("subject"));
                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
       
       public static int delete(String p) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("delete from paper where pid=?");
            pst.setInt(1, Integer.parseInt(p));
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

}
