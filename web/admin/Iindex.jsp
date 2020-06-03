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
        <script>
            history.forward();
        </script>

        <%@ include file="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->

            <%@ include file ="sidebar.jsp"%>
            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Dashboard</a>
                        </li>

                    </ol>

                    <!-- /.container-fluid -->
                    <br><br><br>
                    <div class="container">
                        <div class="row justify-content-around  ">

                            <div class="card bg-light col-4 mb-3" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Teacher Info
                                        <img src="../teacher/images/analysis.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Add New / Remove / Show</h5>
                                    <p class="card-text">Admin can manage teachers according to their info. </p>
                                </div>
                            </div>

                            <div class="card bg-light col-4 mb-3" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Student Info
                                        <img src="../teacher/images/stud.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Add New / Remove / Show</h5>
                                    <p class="card-text">Admin can manage students according to their College, Branch and Year of Admission.</p>
                                </div>
                            </div>
                            
                            <div class="card bg-light col-4 mb-3" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>College
                                        <img src="../img/college.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Add New / Remove / Show</h5>
                                    <p class="card-text">Admin can manage colleges. He can add/remove/ show colleges</p>
                                </div>
                            </div>
                            
                            <div class="card bg-light col-4 mb-3" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Branch
                                        <img src="../img/branch.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Add New / Remove / Show</h5>
                                    <p class="card-text">Admin can manage branch. He can add/remove/ show branch</p>
                                </div>
                            </div>
                            
                            <div class="card bg-light col-4 mb-3" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Subject
                                        <img src="../img/books.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Add New / Remove / Show</h5>
                                    <p class="card-text">Admin can manage subjects. He can add/remove/ show subjects</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                </div>
                <!-- /.content-wrapper -->

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
