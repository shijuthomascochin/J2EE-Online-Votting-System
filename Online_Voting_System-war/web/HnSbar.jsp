<%-- 
    Document   : HnSbar
    Created on : 16 Nov, 2022, 5:13:36 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- theme meta -->
    <meta name="theme-name" content="focus" />
    <title>Election Management System</title>
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
    <link href="css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="css/lib/themify-icons.css" rel="stylesheet">
    <link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="css/lib/weather-icons.css" rel="stylesheet" />
    <link href="css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="css/lib/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    </head>

<body>

    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content active">
                <ul>
                    <div class="logo"><a href="Home"><span>Election Management System</span></a></div>
                    <li><a href="Home"><i class="ti-home"></i> Home</a></li>
                    <li><a href="AboutOVS.jsp"><i class="ti-info"></i>About</a></li>

                    <li><a class="sidebar-sub-toggle"><i class="ti-user"></i>Student <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="Student/index.jsp?err=no">Login</a></li>
                            <li><a href="GetStudentID?type=1">Sign Up</a></li>
                        </ul>
                    </li>
                    <li><a href="Contester/index.jsp?err=no "><i class="ti-user"></i>Contester</a></li>
                    <li><a href="Committee/index.jsp?err=no "><i class="ti-user"></i>Committee Admin</a></li>
                    <li><a href="Admin/index.jsp?err=no"><i class="ti-user"></i>Website Admin</a></li>
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
                    <div class="float-right">
                        <p style="margin-top: 10px; color: black;"> 
                            <i class="ti-user"></i> GUEST
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    