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
        <%@ page import = "com.javadao.CollegeDao,com.javabean.CollegeBean,com.javadao.BranchDao,com.javabean.BranchBean, java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                            <a href="student.jsp">Student</a>
                        </li>
                        <li class="breadcrumb-item active">Add New</li>
                    </ol>

                    <%                        List<CollegeBean> c_disp = new ArrayList();
                                                 List<BranchBean> b_disp = new ArrayList();

                        c_disp = CollegeDao.getAllRecords();
                          b_disp = BranchDao.getAllRecords();

                        request.setAttribute("c_disp", c_disp);
                          request.setAttribute("b_disp", b_disp);

                    %>

                    <!-- /.container-fluid -->
                    <div class="container">


                        <div class="panel panel-default">

                            <div class="panel-heading">Education Experience</div>
                            <div class="panel-body">
                                <form name="myForm" action="AddStudentCon.jsp" onsubmit = "return validateName()" method = "post">
                                    <div id="education_fields">

                                        <label class="mr-2" for="college">College</label>
                                        <select class="form-control-sm  mr-5" name="college">
                                            <c:forEach items="${c_disp}" var="p">
                                                <option value="${p.getC_id()}">${p.getC_name()}</option>
                                            </c:forEach> 

                                        </select>

                                        <label class="mr-2" for="branch">Branch</label>
                                        <select class="form-control-sm  mr-5" name="branch">
                                             <c:forEach items="${b_disp}" var="p">
                                                <option value="${p.getB_name()}">${p.getB_name()}</option>
                                            </c:forEach> 

                                        </select>

                                        <label class="mr-2" for="year">YEAR OF ADMISSION</label>
                                        <input type="number" min="2000" max="3000"  class="form-control-sm  mr-5"  name="year">

                                        <button type="submit" class="btn btn-primary mb-2">Submit</button>

                                        <div id="education_fields"> 

                                        </div>

                                        <div class="col-sm-3 col-xs-3 nopadding">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="Schoolname" name="Schoolname[]" value="" placeholder="Enter Name">
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-success" type="button"  onclick="education_fields();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </form>

                                <div class="clear"></div>

                            </div>

                        </div>
                    </div>
                    <script>

                        function validateName() {

                            var x = document.forms["myForm"]["Schoolname[]"];

                            var i = 0;
                            var flag = true;

                            for (i = 0; i < x.length; i++) {

                                if (x[i].value == "") {
                                    alert("Name must be filled out");
                                    flag = false;
                                    break;
                                }
                            }
                            return flag;

                        }

                    </script>
                </div>

            </div>
            <!-- /.content-wrapper -->

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

        <script>
                        var room = 1;
                        function education_fields() {

                            room++;
                            var objTo = document.getElementById('education_fields');
                            var divtest = document.createElement("div");
                            divtest.setAttribute("class", "form-group removeclass" + room);
                            var rdiv = 'removeclass' + room;
                            divtest.innerHTML = '<div class="col-lg-3 nopadding">\n\
                    <div class="form-group">\n\
                    <div class="input-group">\n\
                    <input type="text" class="form-control" id="Schoolname" name="Schoolname[]" value="" placeholder="Enter Name">\n\
                    <div class="input-group-btn">\n\
                    <button class="btn btn-danger" type="button" onclick="remove_education_fields(' + room + ');">\n\
                    <span class="glyphicon glyphicon-minus" aria-hidden="true">\n\
                    </span>\n\
                    </button>\n\
                    </div>\n\
                    </div>\n\
                    </div>\n\
                    <div class="clear">\n\
                    </div>';

                            objTo.appendChild(divtest);
                        }
                        function remove_education_fields(rid) {
                            $('.removeclass' + rid).remove();
                        }

        </script>

    </body>

</html>
