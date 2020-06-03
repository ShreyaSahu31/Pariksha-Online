<%@ page import = "com.javadao.SubjectDao"%>
<jsp:useBean id= "r" class= "com.javabean.SubjectBean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] sel;
    int i;
%>

<%
    try {
        sel = request.getParameterValues("qselect");
        for (i = 0; i < sel.length; i++) {
            r.setS_id(Integer.parseInt(sel[i]));
            SubjectDao.delete(r);

        }

    } catch (Exception e) {
        out.println(e);
    }
    response.sendRedirect("subject.jsp");

%>