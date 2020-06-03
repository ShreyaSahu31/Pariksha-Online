<%@ page import = "com.javadao.StudentLoginDao_1"%>
<jsp:useBean id = "p" class = "com.javabean.StudentLoginBean_1" />
<jsp:setProperty name= "p" property = "*"  />
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
  <% 
              response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
               response.setHeader("Pragma", "no-cache");
               response.setHeader("Expires", "0");
               %>

<%
    boolean bool = false;
    
    
    bool = StudentLoginDao_1.validate(p);
    if (bool) {
          session.setAttribute("username" , p.getEnroll());
        response.sendRedirect("student/Iindex.jsp");
    } else {
        response.sendRedirect("STlogin.jsp");
    }
%>
