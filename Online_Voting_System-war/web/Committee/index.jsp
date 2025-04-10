<%-- 
    Document   : index
    Created on : 19 Nov, 2022, 4:30:01 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String s = "";
    s=request.getParameter("err");
    session.removeAttribute("un");
    session.invalidate();
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href=""/>
    <title>Committee Member Login</title>

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
                            <h4>Committee Member Login</h4>
                            <form action="../Online_Voting_System-war/CommitteServlet" method="POST">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="email" id="cname" name ="cname" class="form-control" placeholder="Email" required="true">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" id="cpass" name="cpass" class="form-control" placeholder="" required="true">
                                </div>
                                <div class="checkbox">
                                    <label>
										<input type="checkbox"> Remember Me
									</label>
                                    <label class="pull-right">
										<a href="#">Forgotten Password?</a>
									</label>
                                </div>
                                <% if(s.equals("yes")){
                                %>
                                <div>
                                    <h style="color: red;">Incorrect Username or Password</h>
                                </div>
                                <%
                                }
                                %>
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Sign in</button>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
