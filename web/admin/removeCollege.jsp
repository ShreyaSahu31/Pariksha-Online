<%@ page import = "com.javadao.CollegeDao"%>
<jsp:useBean id= "r" class= "com.javabean.CollegeBean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] sel;
    int i;
%>

<%
    try {
        sel = request.getParameterValues("qselect");
        for (i = 0; i < sel.length; i++) {
            r.setC_id(Integer.parseInt(sel[i]));
            CollegeDao.delete(r);

        }

    } catch (Exception e) {
        out.println(e);
    }
    response.sendRedirect("college.jsp");

%>