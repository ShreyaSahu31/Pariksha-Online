package com.javadao;

import com.javabean.QuestionsBean;
import com.javabean.RecordBean;
import com.javabean.StudentLoginBean_1;
import static com.javadao.QuestionsDao.getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 *
 * @author nainc
 */
public class RecordDao {

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

    public static int insert(RecordBean r) {
        int status = 0, i = 0;
        try {
            Connection con = getConnection();
//            PreparedStatement pst = con.prepareStatement("select count(pid) from record where enroll=?");
//            pst.setString(1, r.getEnroll());
//            i = pst.executeUpdate();
//           if(i < 4) {
            PreparedStatement pst1 = con.prepareStatement("INSERT INTO record (enroll," + "pid, subject," + "marks) VALUES(?,?,?,?)");

            pst1.setString(1, r.getEnroll());
            pst1.setInt(2, r.getPid());
            pst1.setString(3, r.getSubject());
            pst1.setInt(4, r.getMarks());

            status = pst1.executeUpdate();

            System.out.println("Record succesfully Inserted !!");
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static Map<String, Integer> fetch_Data(String s) throws SQLException {
        System.out.println("Connection done   yeeeeeeee1");
        ResultSet rs = null;
        Map<String, Integer> myMap = new HashMap();
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select pid, marks, subject from record where enroll=? ");
            pst.setString(1, s);

            rs = pst.executeQuery();
            System.out.println("hii");

            while (rs.next()) {
                myMap.put(rs.getString("subject") + " - " + rs.getInt("pid"), rs.getInt("marks"));

            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return myMap;
    }

    public static List<RecordBean> Marks_Record(StudentLoginBean_1 s, String sub) throws SQLException {
//            System.out.println("Connection done   yeeeeeeee1");
        ResultSet rs = null;
        List<RecordBean> list = new ArrayList();
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("SELECT r.enroll, r.marks FROM student s, record r WHERE s.enroll=r.enroll and r.subject=? and s.year=? and s.branch=? and s.college=?");

            pst.setString(1, sub);
            pst.setInt(2, s.getYear());
            pst.setString(3, s.getBranch());
            pst.setInt(4, s.getCollege());
            rs = pst.executeQuery();
            // System.out.println("hii"); 

            while (rs.next()) {
                RecordBean q = new RecordBean();
                q.setEnroll(rs.getString("enroll"));
                q.setMarks(rs.getInt("marks"));
                list.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return list;
    }
}
