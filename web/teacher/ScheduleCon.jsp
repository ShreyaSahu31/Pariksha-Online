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
<%@ page import = "com.javadao.StudentLoginDao_1"%>
<jsp:useBean id= "p" class= "com.javabean.PaperBean"></jsp:useBean>
<jsp:setProperty property ="*" name="p"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
      System.out.println(request.getParameter("year"));
    int yr = 0 ;
    try{
    yr  = Integer.parseInt(request.getParameter("year"));
   
    System.out.println("year is = " + yr);
}
catch(Exception e){
System.out.println(e);
}
  int i = StudentLoginDao_1.allot(p, yr);

if(i > 0)
    response.sendRedirect("Iindex.jsp");
else
    response.sendRedirect("Error.jsp");

%>