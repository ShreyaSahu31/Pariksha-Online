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


        <%@ include file="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->
            <%@ page import = "com.javadao.StudentLoginDao_1,com.javabean.StudentLoginBean_1, java.util.*, com.javadao.RecordDao"%>
<%@ page import = "com.javadao.CollegeDao,com.javabean.CollegeBean,com.javadao.BranchDao,com.javabean.BranchBean, java.util.*"%>
      
            <jsp:useBean id = "s" class = "com.javabean.StudentLoginBean_1" />
            <jsp:setProperty name= "s" property = "*"  />
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <%@ include file="sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Iindex.jsp">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Results</li>
                    </ol>
                    
                    
                    
                    <%                        List<CollegeBean> c_disp = new ArrayList();
                                                 List<BranchBean> b_disp = new ArrayList();

                        c_disp = CollegeDao.getAllRecords();
                          b_disp = BranchDao.getAllRecords();

                        request.setAttribute("c_disp", c_disp);
                          request.setAttribute("b_disp", b_disp);

                    %>

                    
                    
                    <div class="container">
                        <form class="form-inline mb-2" action="result.jsp" method = "post">

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

                            <button type="submit" class="btn btn-primary mb-2">Submit</button>

                        </form>
                    </div>

                    <%
                        int i =0;
                        int j = 0;
                                      List<StudentLoginBean_1> stud = new ArrayList();

                                      stud = StudentLoginDao_1.SearchRecords(s);
                           
                                      request.setAttribute("s",s);
                                      request.setAttribute("stud",stud);
                           
                                      List<Map> list = new ArrayList();
                                       Map<String, Integer> myMap = new HashMap();
                                      for (i=0; i< stud.size() ; i++){
                                          System.out.println(stud.get(i).getEnroll());
                                          myMap = RecordDao.fetch_Data(stud.get(i).getEnroll());
                                          list.add(myMap);
                                      }
                                      request.setAttribute("list",list);
                  
                    %>

                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            All Records
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <form action="AddNewPaperCon.jsp" method = "post">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>

                                                <th>Roll Number</th>
                                                <th>Enrollment No.</th>
                                                <th>Student Name</th>
                                                <th>Paper ID</th>
                                                <th>Marks Obtained</th>
                                                <th>Paper ID</th>
                                                <th>Marks Obtained</th>
                                                <th>Paper ID</th>
                                                <th>Marks Obtained</th>
                                                <th>Paper ID</th>
                                                <th>Marks Obtained</th>

                                            </tr>
                                        </thead>


                                        <% for(i = 0; i < stud.size(); i++) { %>

                                        <tr>

                                            <td> <% request.setAttribute("p",stud.get(i).getRoll()); %>${p}</td>
                                            <% System.out.println(stud.get(i).getRoll()); %>
                                            <% System.out.println(stud.get(i).getEnroll()); %>
                                            <% System.out.println(stud.get(i).getName()); %>
                                            <td><% request.setAttribute("q",stud.get(i).getEnroll()); %>${q}</td>
                                            <td><% request.setAttribute("r",stud.get(i).getName()); %>${r}</td>

                                            <%  Iterator<String> itr = list.get(i).keySet().iterator(); 
 
                                                  while (itr.hasNext()) 
                                                  {
                                                     String key = itr.next();
                                                      System.out.println(list.get(i).get(key));
                                                          request.setAttribute("t",key);
                                                           request.setAttribute("k",list.get(i).get(key));
                                            %>
                                            <td>${t}</td>
                                            <td>${k}</td>



                                            <% } %>

                                        </tr>    

                                        <% } %>
                                    </table>



                                </form>
                            </div>
                        </div>
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

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="vendor/chart.js/Chart.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-bar-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>

    </body>

</html>
