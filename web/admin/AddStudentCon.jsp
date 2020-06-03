<!DOCTYPE html>﻿

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.text.DecimalFormat" %>
<%@ page import = "com.javadao.StudentLoginDao_1"%>
<%@ page import = "com.javabean.StudentLoginBean_1"%>


<%!
    String roll;
    String[] names;
    String college, branch, year, temp;
    int i, k = 0;
    int num = 1;
    StudentLoginBean_1 r = new StudentLoginBean_1();

%>


<%
    college = request.getParameter("college");
    branch = request.getParameter("branch");
    year = request.getParameter("year");
    roll = 0 +college + branch.substring(0, 2) + year.substring(year.length() -2);

    int max = StudentLoginDao_1.Max(roll);
    num = max + 1;

    DecimalFormat ft = new DecimalFormat("000");

    names = request.getParameterValues("Schoolname[]");

    for (int i = 0; i < names.length; i++) {
        for (int j = i + 1; j < names.length; j++) {
            if (names[i].compareTo(names[j]) > 0) {
                temp = names[i];
                names[i] = names[j];
                names[j] = temp;
            }
        }
    }

    try {
        for (i = 0; i < names.length; i++, num++) {

            r.setRoll(Integer.parseInt(ft.format(num)));
            r.setEnroll(roll + "1" + ft.format(num));
            r.setName(names[i]);
            r.setPassword(0+college + ft.format(num));
            r.setCollege(Integer.parseInt(college));
            r.setBranch(branch);
            r.setYear(Integer.parseInt(year));

            k += StudentLoginDao_1.insert(r);
        }

    } catch (Exception e) {
        System.out.println(e);
    }

        response.sendRedirect("student.jsp");
    

%>
