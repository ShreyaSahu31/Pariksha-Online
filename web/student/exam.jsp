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

    <body id="page-top" style="background-color:#e9ea77;">
        <%  String uid = null;
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            try {
                uid = (String) session.getAttribute("username");
                if (uid == null) {
                    response.sendRedirect("../Tlogin.jsp");
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        %>

        <nav class="navbar navbar-expand navbar-dark bg-dark static-fixed-top sticky-top navbar-fixed-top">
            <img src="../img\parikshaOnline.png" style="width:5%; height:5%;" /> 
            <a class="navbar-brand" href="#">Pariksha Online    ---- </a> <div id="divCounter" style="color:white;"></div>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto mr-md-0">
                <li> <label  style="color:white;"><i> <%= uid%> </i></label></li>
                <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i>
            </a>
            
        </li>
            </ul>

        </nav>


        <script>
            history.forward();
        </script>

        <%@ page import = "com.javadao.QuestionsDao,com.javabean.QuestionsBean, java.util.*"%>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


        <%@ page import = "com.javadao.StudentLoginDao_1"%>
        <jsp:useBean id = "p" class = "com.javabean.PaperBean" />



        <div id="wrapper">


            <div id="content-wrapper">

                <div class="container-fluid">


                    <%
                        int count = 1;
                        try {
                            String enroll = (String) session.getAttribute("username");
                            int x = StudentLoginDao_1.fetch_pid(enroll);

                            System.out.println("x is " + x);

                            List<QuestionsBean> disp = new ArrayList();

                            p.setId(x);
                            disp = QuestionsDao.SearchRecordByPid(p);
                            String s = disp.get(1).getSubject();
                            System.out.println("subject is " + s);
                            request.setAttribute("s", s);
                            request.setAttribute("x", x);
                            request.setAttribute("disp", disp);
                            String n = s.toUpperCase();
                            request.setAttribute("n", n);
                        } catch (Exception e) {
                            System.out.println(e);
                        }

                    %>
                    <br> <br> <br> <br> <br>

                    <!-- /.container-fluid -->

                    <form action ="examcon.jsp" id = "myForm" name="myForm" method ="post" >
                        <input type="hidden" class="qid" name="pid" value="${x}">
                        <input type="hidden" class="qid" name="subject" value="${s}">

                        <c:forEach items="${disp}" var="p">

                            <div class="container-fluid bg-info">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header" >
                                            <input type="hidden" class="qid" name="id" value="${p.getId()}">
                                            <h3><span class="label label-warning" id="qid" ><%= count + "."%></span>${p.getQues()}</h3>
                                                <% count += 1;%>
                                        </div>
                                        <div class="modal-body">
                                            <div class="col-xs-3 col-xs-offset-5">
                                                <div id="loadbar" style="display: none;">
                                                    <div class="blockG" id="rotateG_01"></div>
                                                    <div class="blockG" id="rotateG_02"></div>
                                                    <div class="blockG" id="rotateG_03"></div>
                                                    <div class="blockG" id="rotateG_04"></div>
                                                    <div class="blockG" id="rotateG_05"></div>
                                                    <div class="blockG" id="rotateG_06"></div>
                                                    <div class="blockG" id="rotateG_07"></div>
                                                    <div class="blockG" id="rotateG_08"></div>
                                                </div>
                                            </div>

                                            <div class="quiz btn-group-toggle" id="quiz" data-toggle="buttons">
                                                <label class=" element-animation2 btn btn-lg btn-default btn-block demo" ><span class="btn-label"></span> <input class="aid " type="radio" name="${p.getId()}" value="1" >${p.getOp1()}</label>
                                                <label class=" element-animation2 btn btn-lg btn-default btn-block demo" ><span class="btn-label"></span> <input class="aid" type="radio" name="${p.getId()}" value="2" >${p.getOp2()}</label>
                                                <label class=" element-animation3 btn btn-lg btn-default btn-block demo" ><span class="btn-label"></span> <input class="aid" type="radio" name="${p.getId()}" value="3" >${p.getOp3()}</label>
                                                <label class=" element-animation4 btn btn-lg btn-default btn-block demo" ><span class="btn-label"></span> <input class="aid" type="radio" name="${p.getId()}" value="4">${p.getOp4()}</label>
                                            </div>

                                        </div>
                                        <div class="modal-footer text-muted">
                                            <span id="answer"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach> 
                        <div>
                            <h2></h2>
                            <button class="btn btn-dark btn-lg" type="submit" >Submit</button>
                        </div>
                    </form>
                    <div id="result"></div>                   

                </div>
                <!-- /.content-wrapper -->

            </div>
        </div>


        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>


        <script type="text/javascript">
            var i = 0;
            if (sessionStorage.getItem("counter")) {
                if (sessionStorage.getItem("counter") >= 600) {
                    var value = 600;
                } else {
                    var value = sessionStorage.getItem("counter");
                }
            } else {
                var value = 0;
            }
            i = Math.trunc((600-value)/60);
            document.getElementById('divCounter').innerHTML ="Time Left : " + i + " : " + ((600-value) -( i*60 ));

            var counter = function () {
                if (value >= 600) {
                    sessionStorage.setItem("counter", 0);
                    alert("Time out ....\n\Click OK to Submit....");
                    document.getElementById("myForm").submit();
                    value = 0;
                } else {
                    value = parseInt(value) + 1;
                    sessionStorage.setItem("counter", value);
                }
                i = Math.trunc((600-value)/60);
                document.getElementById('divCounter').innerHTML = "Time Left : " + i + " : " + ((600-value) -( i*60 )) ;
            };

            var interval = setInterval(counter, 1000);

        </script>


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

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
