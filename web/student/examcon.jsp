<%@ page import = "com.javadao.QuestionsDao,com.javadao.RecordDao,com.javabean.QuestionsBean,com.javabean.RecordBean,com.javadao.StudentLoginDao_1, java.util.*"%>

<%@ page import = "com.javadao.StudentLoginDao_1"%>
<jsp:useBean id = "p" class = "com.javabean.PaperBean" />
<jsp:useBean id = "r" class = "com.javabean.RecordBean" />
<%  String uid = null;
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    try {
        uid = (String) session.getAttribute("username");
        if (uid == null) {
            response.sendRedirect("../STlogin.jsp");
        }
    } catch (Exception e) {
        System.out.println(e);
    }
%>


<%!
    Map<Integer, Integer> myMap = new HashMap();
    String id[];
    int i = 0;
    String x, y, enroll;
    int q, ans;
    int totmarks = 0;
    String subject;
%>

<%
    id = request.getParameterValues("id");
    String[] value = new String[id.length];
    subject = request.getParameter("subject");
     System.out.println(y);
    try {
        for (i = 0; i < id.length; i++) {
            value[i] = request.getParameter(id[i]);

            System.out.println(" id " + id[i] + " value " + value[i]);
            if (value[i] == null) {
                value[i] = "0";
            }
            myMap.put(Integer.parseInt(id[i]), Integer.parseInt(value[i]));
        }
        for (Map.Entry<Integer, Integer> entry : myMap.entrySet()) {
            System.out.println(entry);
        }

    } catch (Exception e) {
        System.out.println(e);
    }

//  
//        System.out.println();

%>

<%    enroll = (String) session.getAttribute("username");
    int x = StudentLoginDao_1.fetch_pid(enroll);

    System.out.println("x is " + x);

    List<QuestionsBean> disp = new ArrayList();

    p.setId(x);
    disp = QuestionsDao.SearchRecordByPid(p);
    request.setAttribute("disp", disp);
    totmarks = 0;
    for (i = 0, totmarks = 0; i < disp.size(); i++) {
        q = disp.get(i).getId();
        System.out.println("id is " + q);
        System.out.println(myMap.get(q));
        if (myMap.get(q) == null) {
            ans = 0;
        } else {
            ans = myMap.get(q);
        }
        if (ans == disp.get(i).getAns()) {
            totmarks++;
        }
    }
    System.out.println("marks is " + totmarks);

    session.setAttribute("totmarks", totmarks);
    r.setEnroll(enroll);
    r.setPid(x);
    r.setSubject(subject);
    r.setMarks(totmarks);
    RecordDao.insert(r);
    
    response.sendRedirect("viewresult.jsp");

%>

