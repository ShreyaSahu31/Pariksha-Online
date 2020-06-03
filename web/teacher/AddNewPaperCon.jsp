<%  String uid = null;
                 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                 response.setHeader("Pragma", "no-cache");
                 response.setHeader("Expires", "0");
                 try{
                uid = (String)session.getAttribute("username");
                                  if (uid == null)
                                   response.sendRedirect("../Tlogin.jsp");
                 }
                 catch(Exception e){
                 System.out.println(e);
                 }
        %>
        
<%@ page import = "com.javadao.PaperDao"%>
<jsp:useBean id= "r" class= "com.javabean.PaperBean"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String[] sel;
 int i;
%>


<%
    try {
    String title = request.getParameter("title");
    System.out.print(title);
    sel = request.getParameterValues("qselect");
    r.setTitle(title);
      
    System.out.println(sel[0]);
    System.out.println(sel[1]);
    System.out.println(sel[2]);
    i=Integer.parseInt(sel[0]);
    System.out.println(i);
    
    r.setSem(Integer.parseInt(request.getParameter("sem")));
    r.setBranch(request.getParameter("branch"));
    r.setSubject(request.getParameter("subject"));
    r.setQ1(Integer.parseInt(sel[0]));
    r.setQ2(Integer.parseInt(sel[1]));
    r.setQ3(Integer.parseInt(sel[2]));
    r.setQ4(Integer.parseInt(sel[3]));
    r.setQ5(Integer.parseInt(sel[4]));
    r.setQ6(Integer.parseInt(sel[5]));
    r.setQ7(Integer.parseInt(sel[6]));
    r.setQ8(Integer.parseInt(sel[7]));
    r.setQ9(Integer.parseInt(sel[8]));
    r.setQ10(Integer.parseInt(sel[9]));
    r.setQ11(Integer.parseInt(sel[10]));
    r.setQ12(Integer.parseInt(sel[11]));
    r.setQ13(Integer.parseInt(sel[12]));
    r.setQ14(Integer.parseInt(sel[13]));
    r.setQ15(Integer.parseInt(sel[14]));
    r.setQ16(Integer.parseInt(sel[15]));
    r.setQ17(Integer.parseInt(sel[16]));
    r.setQ18(Integer.parseInt(sel[17]));
    r.setQ19(Integer.parseInt(sel[18]));
    r.setQ20(Integer.parseInt(sel[19]));

    }
            
            
    catch(Exception e) {
        out.println(e);
    }
            
    int i = PaperDao.insert(r);

    if(i > 0)
        response.sendRedirect("Papers.jsp");
    else
        response.sendRedirect("Error.jsp");
        
%>

