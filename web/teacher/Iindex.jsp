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
                    <div class="container">
                        <div class="row justify-content-around  ">

                            <div class="card bg-light col-4 mb-5" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Exams                   
                                        <img src="images/exam.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4> 
                                </div>                               
                                <div class="card-body">
                                    <h5 class="card-title">Questions / Papers</h5>
                                    <p class="card-text">Faculty can add questions to question bank and can set paper whenever needed.</p>
                                </div>
                            </div>

                            <div class="card bg-light col-4 mb-5" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Schedule
                                        <img src="images/schedule.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Manage Timing for Exam</h5>
                                    <p class="card-text">Faculty can set timing for the paper. Students will be able to view paper alloted only after this scheduled time.</p>
                                </div>
                            </div>

                            <div class="card bg-light col-4 mb-5" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Results
                                        <img src="images/result.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">View Classwise Results</h5>
                                    <p class="card-text">Faculty can view overall performance of the class as well of individual student.</p>
                                </div>
                            </div>

                            <div class="card bg-light col-4 mb-3" style="max-width: 18rem; padding:0 0;">
                                <div class="card-header"><h4>Analysis
                                        <img src="images/analysis.png"  alt="exam.png" width="50" height="50" align="right">
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Performance Analysis</h5>
                                    <p class="card-text">Analysis can be made by viewing students overall performance by checking results of previously held exams.</p>
                                </div>
                            </div>


                        </div>
                    </div>
                    <!-- Sticky Footer -->
                    <%@ include file="footer.jsp"%>

                </div>
                <!-- /.content-wrapper -->

            </div>
        </div>
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

        <!-- Page level plugin JavaScript-->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/datatables-demo.js"></script>
        <script src="js/demo/chart-area-demo.js"></script>

    </body>

</html>
