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


        <%@ page import = "com.javadao.QuestionsDao,com.javabean.QuestionsBean, java.util.*"%>

        <jsp:useBean id = "p" class = "com.javabean.PaperBean" />
        <jsp:useBean id = "q" class = "com.javabean.QuestionsBean" />
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ include file ="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->
            <%@ include file ="sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- /.container-fluid -->
                    <%
                           List<QuestionsBean> disp = new ArrayList();
                           String i = request.getParameter("subject");
                           p.setId(Integer.parseInt(i));
                           disp = QuestionsDao.SearchRecordByPid(p);
                        //   request.setAttribute("p",p);
                           request.setAttribute("disp",disp);
                           
                    %>


                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            All Papers
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            
                                            <th>Id</th>
                                            <th>Question</th>
                                            <th>Option 1</th>
                                            <th>Option 2</th>
                                            <th>Option 3</th>
                                            <th>Option 4</th>
                                            <th>Answer</th>
                                        </tr>
                                    </thead>

                                    <c:forEach items="${disp}" var="q">

                                        <tr>
                                            <td>${q.getId()}</td>
                                            <td>${q.getQues()}</td>
                                            <td>${q.getOp1()}</td>
                                            <td>${q.getOp2()}</td>
                                            <td>${q.getOp3()}</td>
                                            <td>${q.getOp4()}</td>
                                            <td>${q.getAns()}</td>
                                        </tr>

                                    </c:forEach> 

                                </table>

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

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>


    </body>

</html>

