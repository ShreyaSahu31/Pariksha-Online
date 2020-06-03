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

        <%@ page import = "com.javadao.QuestionsDao,com.javabean.QuestionsBean, java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ page import = "com.javadao.StudentLoginDao_1"%>
        <jsp:useBean id = "p" class = "com.javabean.PaperBean" />

        <script>
            sessionStorage.removeItem("counter");
            history.forward();
        </script>


        <%
            int count = 1;
            int n;
            String enroll = (String) session.getAttribute("username");
            int x = StudentLoginDao_1.fetch_pid(enroll);
            StudentLoginDao_1.del_pid(enroll);
            System.out.println("x is " + x);

            List<QuestionsBean> disp = new ArrayList();

            p.setId(x);
            disp = QuestionsDao.SearchRecordByPid(p);
            Integer[] ans = new Integer[disp.size()];
            Integer totmarks = (Integer) session.getAttribute("totmarks");

            for (n = 0; n < disp.size(); n++) {
                ans[n] = disp.get(n).getAns();
                System.out.println(ans[n]);
                //   System.out.println("hii");
            }
            request.setAttribute("disp", disp);

        %>


        <%@ include file="navbar1.jsp"%>
        <div id="wrapper">

            <div id="content-wrapper">

                <div class="container-fluid">

                    <div class="col-md-8">

                        <h1>
                            <img src="../img/parikshaOnline.png" alt="Pariksha Online Logo" style="width:10%; height:10%; display: inline; " >
                            <b> Marks Obtained : <%= totmarks%>/20</b>
                        </h1>

                    </div>


                    <c:forEach items="${disp}" var="p">

                        <div class="container-fluid bg-info">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header" >
                                        <input type="hidden" class="qid" name="id" value="${p.getId()}">
                                        <h3><span class="label label-warning" id="qid" ><%= count + ". "%></span>${p.getQues()}</h3>
                                            <% count += 1; %>
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
                                            <label class=" element-animation2 btn btn-lg btn-default btn-block btn-lg disabled demo" ><span class="btn-label"></span> <input class="aid " type="radio" name="${p.getId()}" value="1" disabled >${p.getOp1()}</label>
                                            <label class=" element-animation2 btn btn-lg btn-default btn-block btn-lg disabled demo" ><span class="btn-label"></span> <input class="aid" type="radio" name="${p.getId()}" value="2" disabled>${p.getOp2()}</label>
                                            <label class=" element-animation3 btn btn-lg btn-default btn-block btn-lg disabled demo" ><span class="btn-label"></span> <input class="aid" type="radio" name="${p.getId()}" value="3" disabled>${p.getOp3()}</label>
                                            <label class=" element-animation4 btn btn-lg btn-default btn-block btn-lg disabled demo" ><span class="btn-label"></span> <input class="aid" type="radio" name="${p.getId()}" value="4" disabled>${p.getOp4()}</label>
                                        </div>

                                    </div>
                                    <div class="modal-footer text-muted">
                                        <span id="answer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach> 

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
                    <div class="modal-body">Select "Logout" below if you are ready to leave.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="stlogout.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>


        <script>

            function myFunction() {

                var i, j, m = 0;

                var a = new Array();
            <%
                for (int l = 0; l < ans.length; l++) {
            %>
                a[<%= l%>] = <%=ans[l]%>;
            <%}%>

                var ele = document.getElementsByClassName("aid");
                var brr = document.getElementsByClassName("demo");
                for (i = 0; i < ele.length; ) {

                    for (j = 0; j < 4; j++) {
                        if (ele[i + j].value == a[m]) {
                            brr[i + j].style.color = "green";
                            brr[i + j].style.fontSize = "1.5rem";
                            brr[i + j].style.border = "4px solid MediumSeaGreen";
                            ele[i + j].checked;

                            break;

                        }

                    }
                    i += 4;
                    m += 1;
                }
                return 0;
            }

            var status = myFunction();
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
