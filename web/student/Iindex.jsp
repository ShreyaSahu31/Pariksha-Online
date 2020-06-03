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
        <link rel="shortcut icon" href="../img/parikshaOnline.png">

    </head>

    <body id="page-top" style="background-color:#fce2ae;">

        <script>
            history.forward();
        </script>

        <%@ page import = "com.javadao.StudentLoginDao_1"%>

        <%@ include file="navbar1.jsp"%>


        <div id="wrapper">


            <div id="content-wrapper">

                <div class="container-fluid">


                    <%        String enroll = (String) session.getAttribute("username");
                        int x = StudentLoginDao_1.fetch_pid(enroll);
                        if (x == 0) {

                    %>
                    sorry!! no exam scheduled yet.
                    <% } else { %>
                    <!-- /.container-fluid -->
                    <br><br>
                    <div class="card border-success  mb-3">
                        <div class="card-header">Instructions</div>
                        <div class="card-body">
                            <h5 class="card-title">Read the instructions carefully before attempting quiz.</h5>
                           
                                <ul class="card-text">
                                    <li>Select an answer for every question. </li>
                                    <li>Unanswered questions will be scored as 0.</li>
                                    <li>Click the radio button to indicate your choice.</li>
                                    <li>Currently, only one answer can be selected for a multiple choice question.</li>
                                    <li>Time Duration is 10 Min.</li>
                                    <li>If you use a wheel button mouse, take care not to accidently change your answers. Sometimes scrolling the wheel will rotate through the answers in a selection list, when you might have meant simply to scroll farther down in the quiz window.
</li>
<li>Click on the Submit button at the bottom of the page to have your answers graded.</li>
<li>You will be shown your results, including your score and correct answers. </li>
                                </ul>
                          
                        </div>


                        <a href="exam.jsp" class="btn btn-success" role="button">Start</a>
                        <% }%>

                    </div>
                    <!-- /.content-wrapper -->

                </div>
            </div>
        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>

                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="stlogout.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="../teacher/vendor/jquery/jquery.min.js"></script>
        <script src="../teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="/teacher/vendor/jquery-easing/jquery.easing.min.js"></script>

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
