

<%@ page import = "com.javabean.BranchBean,com.javadao.BranchDao"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String b_name ;
    BranchBean l = new BranchBean();
    int i;
%>


<%

    b_name = request.getParameter("b_name").toUpperCase() ;
   
    l.setB_name(b_name);
    i = BranchDao.insert(l);

    response.sendRedirect("branch.jsp");

%>
