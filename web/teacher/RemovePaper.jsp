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

        <%@ page import = "com.javadao.PaperDao,com.javabean.PaperBean, java.util.*"%>
<%@ page import = "com.javadao.SubjectDao,com.javabean.SubjectBean,com.javadao.BranchDao,com.javabean.BranchBean, java.util.*"%>
        <jsp:useBean id = "p" class = "com.javabean.PaperBean" />
        <jsp:setProperty name= "p" property = "*"  />
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ include file ="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->
            <%@ include file ="sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Exams</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="Papers.jsp">Papers</a>
                        </li>
                        <li class="breadcrumb-item active">Remove</li>
                    </ol>

                    
                         <%                        List<SubjectBean> s_disp = new ArrayList();
                                                 List<BranchBean> b_disp = new ArrayList();

                        s_disp = SubjectDao.getAllRecords();
                          b_disp = BranchDao.getAllRecords();

                        request.setAttribute("s_disp", s_disp);
                          request.setAttribute("b_disp", b_disp);

                    %>
                    
                    
                    <!-- Page Content -->

                    <div class="container">
                        <form class="form-inline mb-2" action="RemovePaper.jsp" method = "post">

                            <label class="mr-2" for="sem">Semester</label>
                            <select class="form-control-sm  mr-5" name="sem">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>

                            <label class="mr-2" for="branch">Branch</label>
                            <select class="form-control-sm mr-5" name="branch">
                                 <c:forEach items="${b_disp}" var="p">
                                                <option value="${p.getB_name()}">${p.getB_name()}</option>
                                            </c:forEach> 

                            </select>

                            <label class="mr-2 inline" for="subject">Subject</label>
                            <select class="form-control-sm mr-5" name="subject">
                               <c:forEach items="${s_disp}" var="p">
                                                <option value="${p.getS_name()}">${p.getS_name()}</option>
                                            </c:forEach> 

                            </select>

                            <button type="submit" class="btn btn-primary mb-2">Submit</button>

                        </form>
                    </div>
                    <!-- /.container-fluid -->
                    <%
                           List<PaperBean> disp = new ArrayList();

                           disp = PaperDao.SearchRecords(p);
                           request.setAttribute("p",p);
                           request.setAttribute("disp",disp);
                           
                    %>


                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            All Papers
                        </div>

                        <form id="show" action="showpaper.jsp"  method="post"></form>
                        <form id="submit" action="RemovePaperCon.jsp" onsubmit="return validateForm()" method="post"></form>

                        <input type="hidden" name="sem" value="${p.getSem()}" form="submit">
                        <input type="hidden" name="branch" value="${p.getBranch()}" form="submit">
                        <input type="hidden" name="subject" value="${p.getSubject()}" form="submit">

                        <div class="card-body">
                            <div class="table-responsive">

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>&nbsp;</th>
                                            <th>Id</th>
                                            <th>Title</th>
                                            <th>Show</th>

                                        </tr>
                                    </thead>



                                    <c:forEach items="${disp}" var="p">

                                        <tr>
                                            <td><input type="radio" name="id" value="${p.getId()}" form="submit"/></td>
                                            <td>${p.getId()}</td>
                                            <td>${p.getTitle()}</td>
                                            <td>

                                                <input type="submit" name="subject" value="${p.getId()}" form="show" />

                                            </td>
                                        </tr>

                                    </c:forEach> 

                                </table>
                               
                                 <input type="submit" class = "btn btn-dark" name="submit" value="Remove" form="submit" />
                            </div>
                        </div>
                    </div>

                </div> 
            </div>

            <!-- Sticky Footer -->
            <%@ include file="footer.jsp"%>
        </div>
        <!-- /.content-wrapper -->


        <!-- /#wrapper -->

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
<script>
     function validateForm() {
        var sel = document.getElementsByName('id');
        var sel_val;
        var f = false
        for(var i = 0; i < sel.length; i++){
            if(sel[i].checked){
                f = true;
            }
        }
        return f;
     }
    </script>
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>


    </body>

</html>

