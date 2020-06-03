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
        <link href="../teacher/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="../teacher/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="../teacher/css/sb-admin.css" rel="stylesheet">
        <link rel="shortcut icon" href="../teacher/images/parikshaOnline.png">
    </head>

    <body id="page-top">
        <%@ page import = "com.javadao.logindao,com.javabean.loginbean, java.util.*"%>

        <jsp:useBean id = "p" class = "com.javabean.loginbean" />
        <jsp:setProperty name= "p" property = "*"  />
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ include file ="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->
            <%@ include file ="sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">


                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Iindex.jsp">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="teacher.jsp">Teacher</a>
                        </li>
                        <li class="breadcrumb-item active">Remove</li>
                    </ol>

                    <!-- Page Content -->

                    <div class="container">

                        <!-- /.container-fluid -->
                        <%                        List<loginbean> disp = new ArrayList();

                            disp = logindao.ShowRecords();

                            request.setAttribute("disp", disp);

                        %>

                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                All Teachers
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <form action="RemoveTeacherCon.jsp" method = "post">

                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>&nbsp;</th>

                                                    <th>Username (Login ID)</th>
                                                    <th>Password</th>
                                                </tr>
                                            </thead>

                                            <c:forEach items="${disp}" var="p">
                                                <tr>
                                                    <td><input type="checkbox" name="qselect" value=${p.getUsername()} /></td>

                                                    <td>${p.getUsername()}</td>
                                                    <td>${p.getPassword()}</td>
                                                </tr>
                                            </c:forEach> 

                                        </table>
                                        <input type="submit" name="SUBMIT" value="Remove" class="text-uppercase btn btn-dark">

                                    </form>
                                </div>

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
                        <a class="btn btn-primary" href="adlogout.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="../teacher/vendor/jquery/jquery.min.js"></script>
        <script src="../teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="../teacher/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="../teacher/js/sb-admin.min.js"></script>


    </body>

</html>


