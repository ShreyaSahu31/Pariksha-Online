<%@ page import = "com.javadao.StudentLoginDao_1"%>
<jsp:useBean id= "r" class= "com.javabean.StudentLoginBean_1"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] sel;
    int i;
%>

<%
    try {
        sel = request.getParameterValues("qselect");
        for (i = 0; i < sel.length; i++) {
            r.setEnroll(sel[i]);
            StudentLoginDao_1.delete(r);

        }

    } catch (Exception e) {
        out.println(e);
    }
    response.sendRedirect("student.jsp");

%>