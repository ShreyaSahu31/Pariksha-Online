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

<%@ page import = "com.javadao.PaperDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
  String p = request.getParameter("id");
  int i = PaperDao.delete(p);

if(i > 0)
    response.sendRedirect("Iindex.jsp");
else
    response.sendRedirect("Error.jsp");

%>