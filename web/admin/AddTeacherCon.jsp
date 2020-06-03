

<%@ page import = "com.javabean.loginbean,com.javadao.logindao"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String username, password;
    loginbean l = new loginbean();
    int i, j;
%>


<%

    username = request.getParameter("username");
    j = (int) (Math.random() * 1000);
    username = username + j;
    password = request.getParameter("password");
    l.setUsername(username);
    l.setPassword(password);
    i = logindao.insert(l);

    response.sendRedirect("teacher.jsp");

%>