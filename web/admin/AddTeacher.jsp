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
                        <li class="breadcrumb-item">
                            <a href="teacher.jsp">Teacher</a>
                        </li>
                        <li class="breadcrumb-item active">Add New</li>
                    </ol>



                    <!-- /.container-fluid -->
                    <div class="container">


                        <div class="panel panel-default">


                            <div class="panel-body">
                                <script>

                                    var user, pass;

                                    function validateForm() {
                                        user = document.forms["myForm"]["username"].value;

                                        pass = document.forms["myForm"]["password"].value;

                                        if (user == "") {
                                            alert("Field must be filled");
                                            return false;

                                        }
                                        if (pass == "") {
                                            alert("Field must be filled");
                                            return false;

                                        }

                                    }
                                </script>
                                <div class="row">
                                    <div class="col-sm-4 col-sm-offset-4">
                                        <div class="panel panel-default">
                                            <br><br><br>
                                            <div class="panel-body">
                                                <form accept-charset="UTF-8" name ="myForm" role="form" action="AddTeacherCon.jsp" onsubmit="return validateForm()" method = "post">
                                                    <fieldset>
                                                        <div class="form-group">
                                                            <div class="input-group input-group-lg">
                                                                <span class="input-group-addon"><i class="fas fa-chalkboard-teacher fa-2x"></i></span>......
                                                                <input type="text" class="form-control " name="username" placeholder="Username" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="input-group input-group-lg">

                                                                <span class="input-group-addon"><i class="fa fa-fw fa-lock fa-2x"></i></span>......
                                                                <input type="password" class="form-control " name="password" placeholder="Password">
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <input class="btn btn-primary btn-group-lg " type="submit" value="Submit">
                                                    </fieldset>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
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
