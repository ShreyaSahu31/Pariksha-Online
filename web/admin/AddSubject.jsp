

<%@ page import = "com.javabean.SubjectBean,com.javadao.SubjectDao"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String s_name ;
    SubjectBean l = new SubjectBean();
    int i;
%>


<%

    s_name = request.getParameter("s_name").toUpperCase() ;
   
    l.setS_name(s_name);
    i = SubjectDao.insert(l);

    response.sendRedirect("subject.jsp");

%>
