<%  String uid = null;
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    try {
        uid = (String) session.getAttribute("username");
        if (uid == null) {
            response.sendRedirect("../ADlogin.jsp");
        }
    } catch (Exception e) {
        System.out.println(e);
    }
%>


<nav class="navbar navbar-expand navbar-dark bg-dark static-fixed-top sticky-top ">
    <img src="../teacher/images/parikshaOnline.png" style="width:5%; height:5%;" /> 
    <a class="navbar-brand" href="Iindex.jsp">Pariksha Online</a>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto mr-md-0">

        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">

                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
            </div>
        </li>
    </ul>

</nav>