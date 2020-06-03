<%  String uid = null;
                 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                 response.setHeader("Pragma", "no-cache");
                 response.setHeader("Expires", "0");
                 try{
                uid = (String)session.getAttribute("username");
                                  if (uid == null)
                                   response.sendRedirect("../Tlogin.jsp");
                 }
                 catch(Exception e){
                 System.out.println(e);
                 }
        %>

<%@ page import = "com.javadao.QuestionsDao"%>
<jsp:useBean id= "r" class= "com.javabean.QuestionsBean"></jsp:useBean>
<jsp:setProperty property ="*" name="r"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  
int i = QuestionsDao.insert(r);

if(i > 0)
    response.sendRedirect("Questions.jsp");
else
    response.sendRedirect("Error.jsp");
%>