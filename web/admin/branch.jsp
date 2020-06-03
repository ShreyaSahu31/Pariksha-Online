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
 <%@ page import = "com.javadao.BranchDao,com.javabean.BranchBean, java.util.*"%>
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
                        <li class="breadcrumb-item active">Branch</li>
                    </ol>

                      <%                        List<BranchBean> b_disp = new ArrayList();
                                           
                        b_disp = BranchDao.getAllRecords();
                        request.setAttribute("b_disp", b_disp);

                    %>
        
                    
                    <div class="container">

                        <div class="row">
                            <div class="col-xs-5 col-sm-4 col-lg-6">
                               
                                <a href="#" class="text-uppercase btn btn-dark btn-lg btn-block" role="button"  onclick="show3();">Add New<br></a>
                               
                                <a href="#" class="text-uppercase btn btn-dark btn-lg btn-block" role="button" onclick="show1();">Remove<br></a>
                                
                                <a href="#" class="text-uppercase btn btn-dark btn-lg btn-block" role="button" onclick="show2();">Show</a>
                                <br>
                                
                                
                                 <div class="card mb-3" id="addBranch" style = "display:none;">
                                      <div class="panel-body">
                                                <form accept-charset="UTF-8" name ="myForm" role="form" action="AddBranch.jsp" onsubmit="return validateForm()" method = "post">
                                                    <fieldset>
                                                        <div class="form-group">
                                                            <div class="input-group input-group-lg">

                                                                <span class="input-group-addon"><i class="fa fa-university fa-2x"></i></span>...Branch...
                                                                <input type="text" class="form-control " name="b_name" placeholder="branch">
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <input class="btn btn-secondary btn-group-lg " type="submit" value="Submit">
                                                    </fieldset>
                                                </form>

                                            </div>
                                     
                                </div>
                                
                                   <div class="card mb-3" id="table1" style = "display:none;">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            All Branch
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <form action="removeBranch.jsp" method = "post">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                               <th>&nbsp;</th>
                                                <th>ID</th>
                                                <th>NAME</th>
                                            </tr>
                                        </thead>

                                        <c:forEach items="${b_disp}" var="p">

                                            <tr>
                                                <td><input type="checkbox" name="qselect" value=${p.getB_id()} /></td>
                                                <td>${p.getB_id()}</td>
                                                <td>${p.getB_name()}</td>
                                            </tr>
                                        </c:forEach> 
                                
                                    </table>
                                    <input type="submit" name="SUBMIT" value="Remove" class="text-uppercase btn btn-dark">

                                </form>
                            </div>

                        </div>
                    </div>
                                
                                
                                   <div class="card mb-3" id="table2" style = "display:none;">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            All Branch
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                              
                                                <th>ID</th>
                                                <th>NAME</th>
                                            </tr>
                                        </thead>

                                        <c:forEach items="${b_disp}" var="p">

                                            <tr>
                                              
                                                <td>${p.getB_id()}</td>
                                                <td>${p.getB_name()}</td>
                                            </tr>
                                        </c:forEach> 
                                
                                    </table>
                            </div>

                        </div>
                    </div>
                                
                                
                            </div>
                            <div class="col-xs-1 col-sm-1 col-lg-1"></div>
                            <div class="col-xs-5 col-sm-6 col-lg-4 ">
                                <br>
                                <br>
                                <img src="../img/branch.png" style="width:130%; height:24rem; max-height:  24rem; " /> 
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

        
         <script>

                                    var  b_name;

                                    function validateForm() {
                                        b_name = document.forms["myForm"]["b_name"].value;

                                        if (b_name == "") {
                                            alert("Field must be filled");
                                            return false;

                                        }

                                    }
                                </script>
        
          <script>          
                    
                    function show1() {
    document.getElementById("table1").style.display="block";
    document.getElementById("addBranch").style.display="none";
    document.getElementById("table2").style.display="none";
}

 function show2() {
    document.getElementById("table2").style.display="block";
    document.getElementById("addBranch").style.display="none";
    document.getElementById("table1").style.display="none";
}

 function show3() {
    document.getElementById("table2").style.display="none";
    document.getElementById("addBranch").style.display="block";
    document.getElementById("table1").style.display="none";
}
</script>
        
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
