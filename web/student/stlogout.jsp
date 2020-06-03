<%@ page import = "com.javadao.StudentLoginDao_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    session.removeAttribute("totmarks");
    session.removeAttribute("username");

    session.invalidate();
    response.sendRedirect("../STlogin.jsp");

%>  


