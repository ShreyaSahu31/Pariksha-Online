
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
          
    String s = (String)session.getAttribute("username");
    session.removeAttribute("username");
    session.invalidate();
    response.sendRedirect("../Tlogin.jsp");
      
%>  


