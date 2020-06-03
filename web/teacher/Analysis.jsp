
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Pariksha Online</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/parikshaOnline.png">

    </head>

    <body id="page-top">


       
<%@ page import = "com.javadao.CollegeDao,com.javabean.CollegeBean,com.javadao.SubjectDao,com.javabean.SubjectBean,com.javadao.BranchDao,com.javabean.BranchBean, java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
        <%@ page import="java.util.*" %>
        <%@ page import = "com.javadao.StudentLoginDao_1, com.javadao.RecordDao"%>
        <%@ page import = "com.javabean.StudentLoginBean_1, com.javabean.RecordBean"%>

        <%@ include file="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->

            <%@ include file="sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Iindex.jsp">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Analysis</li>
                    </ol>
                    
                    
                         <%                        List<SubjectBean> s_disp = new ArrayList();
                                                     List<BranchBean> b_disp = new ArrayList();
                                                      List<CollegeBean> c_disp = new ArrayList();
                        s_disp = SubjectDao.getAllRecords();
                          b_disp = BranchDao.getAllRecords();
                           c_disp = CollegeDao.getAllRecords();
                        request.setAttribute("s_disp", s_disp);
                          request.setAttribute("b_disp", b_disp);
                            request.setAttribute("c_disp", c_disp);
                            
                    %>
                    
                    
                    
                    <div class="container">
                        <form class="form-inline mb-2" onsubmit="myFun()" action="Analysis.jsp" method = "post">

                            <label class="mr-2" for="sem">College</label>
                            <select class="form-control-sm  mr-5" name="college">
                                 <c:forEach items="${c_disp}" var="p">
                                                <option value="${p.getC_id()}">${p.getC_name()}</option>
                                            </c:forEach> 
                            </select>

                            <label class="mr-2" for="branch">Branch</label>
                            <select class="form-control-sm mr-5" name="branch">
                               <c:forEach items="${b_disp}" var="p">
                                                <option value="${p.getB_name()}">${p.getB_name()}</option>
                                            </c:forEach> 

                            </select>

                            <label class="mr-2 inline" for="year">Year</label>
                                 <input type="number" min="2000" max="3000"  class="form-control-sm  mr-5"  name="year">

                            <label class="mr-2 inline" for="subject">Subject</label>
                            <select class="form-control-sm mr-5" name="subject">
                              <c:forEach items="${s_disp}" var="p">
                                                <option value="${p.getS_name()}">${p.getS_name()}</option>
                                            </c:forEach> 

                            </select>

                            <button type="submit" class="btn btn-primary mb-2">Submit</button>

                        </form>
                    </div>



                    <div class="card mb-3" id="ch" >
                        <% 
                            int marks=0, listsize=0; 
              
                            int[] count = {0, 0, 0, 0, 0};
                            float[] avg = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
              
                             List<RecordBean> list = new ArrayList();
               
                       StudentLoginBean_1 r = new StudentLoginBean_1(); 
              
                            try{
              
         
                      String college=request.getParameter("college");
                      String branch=request.getParameter("branch");
                      String year=request.getParameter("year");
                      String sub=request.getParameter("subject");
           

                      r.setCollege(Integer.parseInt(college));
                          r.setBranch(branch);
                          r.setYear(Integer.parseInt(year));
                         list=RecordDao.Marks_Record(r,sub);
           
                          request.setAttribute("list",list);
           
              for(int i = 0; i< list.size(); i++) 
                  System.out.println(list.get(i).getEnroll() +" - " +list.get(i).getMarks());
              
                   System.out.println("hello 1 ");         
                            listsize=list.size();
                 for(int i = 0; i< list.size(); i++) {
                     marks = list.get(i).getMarks();
                     System.out.println(marks);  
                     if(marks>=17 && marks<=20)
                         count[0]++; 
       
                     else if(marks>=13 && marks<=16)
                         count[1]++;
                      else if(marks>=9 && marks<=12)
                         count[2]++;
                      else if(marks>=5 && marks<=8)
                         count[3]++;
                      else 
                         count[4]++;
   
                 }    
                 System.out.println("hello 2 ");  

                  for(int i = 0; i< 5; i++) {
       
                      avg[i] = (count[i] + 0.0f)/list.size() * 100;
                      System.out.println(count[i] + " - " + avg[i]);
                  }
    
    
                  }
              catch(Exception e){
                                 System.out.println(e);
                            }
                        %>


                        <script>

                            window.onload = function myFun() {
                                if (<%=listsize%> != 0) {


                                    var chart = new CanvasJS.Chart("ch",
                                            {
                                                theme: "light2",
                                                title: {
                                                    text: "Result Analysis of students"
                                                },
                                                data: [
                                                    {
                                                        type: "pie",
                                                        showInLegend: true,
                                                        toolTipContent: "{y} - #percent %",
                                                        yValueFormatString: "-",
                                                        legendText: "{indexLabel}",
                                                        dataPoints: [
                                                            {y: <%= avg[0]%>, indexLabel: " A (17-20)                         "},
                                                            {y: <%= avg[1]%>, indexLabel: " B (13-16)                        "},
                                                            {y: <%= avg[2]%>, indexLabel: " C (9-12)                        "},
                                                            {y: <%= avg[3]%>, indexLabel: " D (5-8)                        "},
                                                            {y: <%= avg[4]%>, indexLabel: " E (0-4)"},
                                                        ]
                                                    }
                                                ]
                                            });
                                    chart.render();


                                } else {
                                    document.getElementById("ch").innerHTML = "No Record Found";
                                }

                            }

                        </script>
                    </div>
                </div>              

            </div>
        </div>

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>

                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="tlogout.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!--   Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!--   Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!--   Page level plugin JavaScript-->
        <script src="vendor/chart.js/Chart.min.js"></script>

        <!--   Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-bar-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>


        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

    </body>

</html>
