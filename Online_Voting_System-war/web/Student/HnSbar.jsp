<%-- 
    Document   : HnSbar
    Created on : 16 Nov, 2022, 5:13:36 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, on-store");
    response.setHeader("Cache-Control", "post-check=0, pre-check=0, false");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    String s = (String)session.getAttribute("un");
    if(s == null )
        response.sendRedirect("../Home");
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="cache-control" content="max-age=0, must-revalidate, no-cache, no-store, private">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="expires" content="-1">
    
    <!-- theme meta -->
    <meta name="theme-name" content="focus" />
    <title>Student Page</title>
    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
    <!-- Styles -->
    <link href="../css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="../css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="../css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="../css/lib/themify-icons.css" rel="stylesheet">
    <link href="../css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="../css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="../css/lib/weather-icons.css" rel="stylesheet" />
    <link href="../css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="../css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="../css/lib/helper.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    </head>

<body>
    <!--To reload the page when back button is cliked-->
    <script>
        window.addEventListener( "pageshow", function ( event ) {
          var historyTraversal = event.persisted || ( typeof window.performance != "undefined" && window.performance.navigation.type === 2 );
          if ( historyTraversal ) {
            window.location.reload();
          }
        });
    </script>
    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content active">
                <ul>
                    <div class="logo"><a href="Home.jsp"><span>Election Management System</span></a></div>
                    <li><a href="Home.jsp"><i class="ti-home"></i> Home</a></li>
                    <li><a href="../VoteServlet"><i class="ti-email"></i> Votes </a></li>
                    <li><a href="../ApplyCandi"><i class="ti-view-list"></i> Apply for Candidacy</a></li>   
                    <li><a class="sidebar-sub-toggle"><i class="ti-list"></i>Profile <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="ViewProfile.jsp">View Profile</a></li>
                            <li><a href="../UpdateStudentS">Edit Profile</a></li>   
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /# sidebar -->

    <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="float-left">
                        <div class="hamburger sidebar-toggle">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>                        
                    </div>
                    <form action="../LogoutServlet" method="POST">
                    <div class="float-right">
                        <p style="margin-top: 10px; color: black;"> 
                            <Button type="sumbit" style="background: none; color: inherit; outline: inherit; border: none;"><i class="ti-user"></i> LOGOUT</Button>
                        </p>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    