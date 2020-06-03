<%@ page import = "com.javadao.AdminDao"%>
<jsp:useBean id = "p" class = "com.javabean.AdminBean" />
<jsp:setProperty name= "p" property = "*"  />
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
  <% 
              response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
               response.setHeader("Pragma", "no-cache");
               response.setHeader("Expires", "0");
               %>

<%
    boolean bool = false;
    
    
    bool = AdminDao.validate(p);
    if (bool) {
          session.setAttribute("username" , p.getUsername());
        response.sendRedirect("admin/Iindex.jsp");
    } else {
        response.sendRedirect("ADlogin.jsp");
    }
%>
