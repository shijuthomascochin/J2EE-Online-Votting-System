<%-- 
    Document   : Signup
    Created on : 19 Nov, 2022, 12:02:50 PM
    Author     : akhil
--%>

<%@page import="SchoolPackage.School"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href=""/>
    <title>Student Login</title>

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
    <link href="../css/lib/font-awesome.min.css" rel="stylesheet"/>
    <link href="../css/lib/themify-icons.css" rel="stylesheet"/>
    <link href="../css/lib/bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/lib/helper.css" rel="stylesheet"/>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
</head>

<body class="lbody">
    <%
    response.setHeader("Cache-Control", "no-cache, on-store");
    response.setHeader("Cache-Control", "post-check=0, pre-check=0, false");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    String sid = (String)session.getAttribute("sid");
    if(sid == null)
        response.sendRedirect("../index.jsp");
    List<School> ls = (List<School>)session.getAttribute("school");
%>
<script>
        window.addEventListener( "pageshow", function ( event ) {
          var historyTraversal = event.persisted || ( typeof window.performance != "undefined" && window.performance.navigation.type === 2 );
          if ( historyTraversal ) {
            window.location.reload();
          }
        });
    </script>
    <div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content">
                        <div class="login-form">
                            <h4>Student Signup</h4>
                            <form action="../Online_Voting_System-war/AddStudentServlet?type=1" method="POST">
                                <div class="form-group">
                                    <label>Student ID</label>
                                    <input type="text" id="sid" name ="sid" class="form-control" value="<%=sid%>" required="true" readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" id="sname" name="sname" class="form-control" placeholder="" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" id="semail" name="semail" class="form-control" placeholder="" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" id="sphone" name="sphone" class="form-control" pattern="[1-9]{1}[0-9]{9}" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label for="schid">School</label>
                                    <select name="schid" id="schid" class="form-control" required="true">
                                      <option class="form-control" value="">Select</option>
                                      <%
                                          for(School s : ls){
                                            String stri = s.getSchool_id();
                                            String strn = s.getSchool_name();
                                        %>
                                        <option class="form-control" value="<%=stri%>"><%=strn%></option>
                                      <%     
                                          }
                                      %>
                                      <!--<option class="form-control" value="Other">Other</option>-->
                                    </select>
                                </div>                                  
                                <div class="form-group">
                                    <label>Year</label>
                                    <input type="text" id="syear" name="syear" class="form-control" placeholder="" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" id="spass" name="spass" class="form-control" placeholder="" required="true">
                                </div>                                  
                                
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Save</button> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>