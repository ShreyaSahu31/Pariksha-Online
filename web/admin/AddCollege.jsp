

<%@ page import = "com.javabean.CollegeBean,com.javadao.CollegeDao"%>
<jsp:useBean id= "c" class= "com.javabean.CollegeBean"></jsp:useBean>
<jsp:setProperty property ="*" name="c"/>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>


<%
int i;

i = CollegeDao.insert(c);

    response.sendRedirect("college.jsp");

%>