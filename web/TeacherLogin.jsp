<%@ page import = "com.javadao.logindao"%>
<jsp:useBean id = "p" class = "com.javabean.loginbean" />
<jsp:setProperty name= "p" property = "*"  />
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
 <% 
              response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
               response.setHeader("Pragma", "no-cache");
               response.setHeader("Expires", "0");
               %>


<%
    boolean bool = false;

    bool = logindao.validate(p);
    if (bool) {
        session.setAttribute("username" , p.getUsername());
        response.sendRedirect("teacher/Iindex.jsp");
    } else {
        response.sendRedirect("Tlogin.jsp");
    }
%>
