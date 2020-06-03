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

        <%@ include file="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->

            <%@ include file ="sidebar.jsp"%>
            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Iindex.jsp">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Teacher</li>
                    </ol>

                    <div class="container">

                        <div class="row">
                            <div class="col-xs-5 col-sm-4 col-lg-6">
                                <br><br><br>
                                <a href="AddTeacher.jsp" class="text-uppercase btn btn-dark btn-lg btn-block" role="button">Add New<br></a>
                                <br>
                                <a href="RemoveTeacher.jsp" class="text-uppercase btn btn-dark btn-lg btn-block" role="button">Remove<br></a>
                                <br>
                                <a href="ShowTeacher.jsp" class="text-uppercase btn btn-dark btn-lg btn-block" role="button">Show</a>
                            </div>
                            <div class="col-xs-1 col-sm-1 col-lg-1"></div>
                            <div class="col-xs-5 col-sm-6 col-lg-4">
                                <br>
                                <br>
                                <img src="../img/teacher.png" style="width:130%; height:100%;" /> 
                            </div>
                        </div>
                    </div>
                    <!-- Sticky Footer -->
                    <%@ include file="footer.jsp"%>

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

        <!-- Page level plugin JavaScript-->
        <script src="../teacher/vendor/chart.js/Chart.min.js"></script>
        <script src="../teacher/vendor/datatables/jquery.dataTables.js"></script>
        <script src="../teacher/vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="../teacher/js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="../teacher/js/demo/datatables-demo.js"></script>
        <script src="../teacher/js/demo/chart-area-demo.js"></script>

    </body>

</html>
