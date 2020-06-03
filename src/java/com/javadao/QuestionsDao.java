/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javadao;


import com.javabean.PaperBean;
import com.javabean.QuestionsBean;
import java.util.*;

import java.sql.*;
/**
 *
 * @author nainc
 */
public class QuestionsDao {
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

    public static int insert(QuestionsBean q) {
        int status = 0;
        try {
            Connection con = getConnection();

            PreparedStatement pst = con.prepareStatement("INSERT INTO questions ("+"sem,branch,subject,ques,op1,op2,op3,op4,"+"ans,"+"marks) VALUES(?,?,?,?,?,?,?,?,?,?)");

            pst.setInt(1, q.getSem());
            pst.setString(2, q.getBranch());
            pst.setString(3, q.getSubject());
            pst.setString(4, q.getQues());
            pst.setString(5, q.getOp1());
            pst.setString(6, q.getOp2());
            pst.setString(7, q.getOp3());
            pst.setString(8, q.getOp4());
            pst.setInt(9, q.getAns());
            pst.setInt(10, q.getMarks());

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int edit(QuestionsBean q) throws ClassNotFoundException {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("update set ques=?, op1=?, op2=?, op3=?, op4=?, ans=?, marks=?, where id=?");
            
            pst.setString(1, q.getQues());
            pst.setString(2, q.getOp1());
            pst.setString(3, q.getOp2());
            pst.setString(4, q.getOp3());
            pst.setString(5, q.getOp4());
            pst.setInt(6, q.getAns());
            pst.setInt(7, q.getMarks());
            pst.setInt(8, q.getId());

            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(QuestionsBean q) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("delete from questions where id=?");
            pst.setInt(1, q.getId());
            status = pst.executeUpdate();

        } catch (SQLException e) {
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
                q.setBranch(rs.getString("branch"));
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
   
   
   public static List<QuestionsBean> SearchRecords(QuestionsBean q1) {
        List<QuestionsBean> list = new ArrayList();

        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from questions where sem=? and branch=? and subject=?");
            pst.setInt(1, q1.getSem());
            pst.setString(2, q1.getBranch());
            pst.setString(3, q1.getSubject());
            
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                //  System.out.println("fetch Data");
                QuestionsBean q = new QuestionsBean();
                
                q.setId(rs.getInt("id"));
                q.setSem(rs.getInt("sem"));
                q.setBranch(rs.getString("branch"));
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
   
    public static List<QuestionsBean> SearchRecordByPid(PaperBean p) {
        List<Integer> li = new ArrayList();    
       List<QuestionsBean> list = new ArrayList();
                
       try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from paper where pid=?");
            pst.setInt(1, p.getId());
            ResultSet rs = pst.executeQuery();
               rs.next();
             li.add(rs.getInt("q1"));
             li.add(rs.getInt("q2"));
             li.add(rs.getInt("q3"));
             li.add(rs.getInt("q4"));
             li.add(rs.getInt("q5"));
             li.add(rs.getInt("q6"));
             li.add(rs.getInt("q7"));
             li.add(rs.getInt("q8"));
             li.add(rs.getInt("q9"));
             li.add(rs.getInt("q10"));
             li.add(rs.getInt("q11"));
             li.add(rs.getInt("q12"));
             li.add(rs.getInt("q13"));
             li.add(rs.getInt("q14"));
             li.add(rs.getInt("q15"));
             li.add(rs.getInt("q16"));
             li.add(rs.getInt("q17"));
             li.add(rs.getInt("q18"));
             li.add(rs.getInt("q19"));
             li.add(rs.getInt("q20"));
             
            li.forEach(System.out::println);
            
            for( int i : li) {  
                PreparedStatement ps = con.prepareStatement("select * from questions where id=?");
                 ps.setInt(1, i);
                 ResultSet r = ps.executeQuery();
                 r.next();
                QuestionsBean q = new QuestionsBean();
                
                q.setId(r.getInt("id"));
                q.setSem(r.getInt("sem"));
                q.setBranch(r.getString("branch"));
                q.setSubject(r.getString("subject"));
                q.setQues(r.getString("ques"));
                q.setOp1(r.getString("op1"));
                q.setOp2(r.getString("op2"));
                q.setOp3(r.getString("op3"));
                q.setOp4(r.getString("op4"));
                q.setAns(r.getInt("ans"));
                q.setMarks(r.getInt("marks"));

                list.add(q);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
}
