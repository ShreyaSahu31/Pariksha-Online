
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
        <link rel="shortcut icon" href="img/parikshaOnline.png">
        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }
        </style>

    </head>

    <body id="page-top">
<%@ page import = "com.javadao.SubjectDao,com.javabean.SubjectBean,com.javadao.BranchDao,com.javabean.BranchBean, java.util.*"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ include file="navbar.jsp"%>

        <div id="wrapper">

            <!-- Sidebar -->
            <%@ include file= "sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Exams</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="Questions.jsp">Questions</a>
                        </li>
                        <li class="breadcrumb-item active">Add New</li>
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
                        <form action="AddNewQuesCon.jsp" onsubmit="return validateForm()" method = "post" >

                            <label for="sem">Semester</label>
                            <select  name="sem" class="ques" >
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>

                            <label for="branch" >Branch</label>
                            <select  name="branch" class="ques">
                                   <c:forEach items="${b_disp}" var="p">
                                                <option value="${p.getB_name()}">${p.getB_name()}</option>
                                            </c:forEach> 

                            </select>



                            <label for="subject" >Subject</label>
                              <select  name="subject" class="ques">
                               <c:forEach items="${s_disp}" var="p">
                                                <option value="${p.getS_name()}">${p.getS_name()}</option>
                                            </c:forEach> 
                            </select>

                            <label for="subject">Question</label>
                            <textarea class="ques" name="ques" placeholder="Write something.." style="height:200px"></textarea>

                            <label for="subject">Option 1</label>
                            <textarea class="ques" name="op1" placeholder="Write something.." style="height:100px"></textarea>

                            <label for="subject">Option 2</label>
                            <textarea class="ques" name="op2" placeholder="Write something.." style="height:100px"></textarea>

                            <label for="subject">Option 3</label>
                            <textarea class="ques" name="op3" placeholder="Write something.." style="height:100px"></textarea>

                            <label for="subject">Option 4</label>
                            <textarea class="ques" name="op4" placeholder="Write something.." style="height:100px"></textarea>

                            <label for="ans">Answer</label>
                             <select name="ans" class="ques">
                                  <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                 <option value="4">4</option>
                            </select>
                           
                            <input  class="ques" type ="hidden" name="marks" value ="1">

                            <input type="submit" name="submit" value="Add">

                        </form>
                    </div>


                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <%@include file ="footer.jsp"%>

            </div>
            <!-- /.content-wrapper -->

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
        
        <script>
             
        function validateForm() {
             
            var ele = document.getElementsByTagName("select");
            var ele2 = document.getElementsByTagName("textarea")
            for(var i = 0; i < ele.length; i++){
                if (ele[i].value == "") {
                    alert("Field must be selected ");
                    return false;
                }
            }
            
             for(var i = 0; i < ele2.length; i++){
                if (ele2[i].value == "") {
                    alert("Field must filled");
                    return false;
                }
            }
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
