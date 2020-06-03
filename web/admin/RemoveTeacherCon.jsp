<%@ page import = "com.javadao.logindao"%>
<jsp:useBean id= "r" class= "com.javabean.loginbean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] sel;
    int i;
%>

<%
    try {
        sel = request.getParameterValues("qselect");
        for (i = 0; i < sel.length; i++) {
            r.setUsername(sel[i]);
            logindao.delete(r);

        }

    } catch (Exception e) {
        out.println(e);
    }
    response.sendRedirect("teacher.jsp");

%>