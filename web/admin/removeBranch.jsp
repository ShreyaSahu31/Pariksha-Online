<%@ page import = "com.javadao.BranchDao"%>
<jsp:useBean id= "r" class= "com.javabean.BranchBean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] sel;
    int i;
%>

<%
    try {
        sel = request.getParameterValues("qselect");
        for (i = 0; i < sel.length; i++) {
            r.setB_id(Integer.parseInt(sel[i]));
            BranchDao.delete(r);

        }

    } catch (Exception e) {
        out.println(e);
    }
    response.sendRedirect("branch.jsp");

%>