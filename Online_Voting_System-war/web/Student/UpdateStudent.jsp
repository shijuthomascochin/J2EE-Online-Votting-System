<%-- 
    Document   : UpdateStudent
    Created on : 19 Nov, 2022, 3:08:07 AM
    Author     : akhil
--%>

<%@page import="SchoolPackage.School"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>

<div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content">
                        <%
                                        String sid = (String)session.getAttribute("sid");
                                        String sname = (String)session.getAttribute("sname");
                                        String semail = (String)session.getAttribute("semail");
                                        String sphone = (String)session.getAttribute("sphone");
                                        String schid = (String)session.getAttribute("schid");
                                        String syear = (String)session.getAttribute("syear");
                                        String spass = (String)session.getAttribute("spass");
                                        List<School> ls = (List<School>)session.getAttribute("school");
                        %>
                        <div class="login-form">
                            <h4>Edit Details</h4>
                            <form action="../OVSystem-war/UpdateStudentSS" method="POST">
                                <div class="form-group">
                                    <label>Student ID</label>
                                    <input type="text" id="sid" name ="sid" class="form-control" value="<%=sid%>" required="true" readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" id="sname" name="sname" class="form-control" value="<%=sname%>" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" id="semail" name="semail" class="form-control" value="<%=semail%>" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" id="sphone" name="sphone" class="form-control" value="<%=sphone%>" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label for="schid">School</label>
                                    <input type="text" id="schid" name="schid" class="form-control" value="<%=schid%>" required="true" readonly="true">
                                                                    
                                </div>                                  
                                <div class="form-group">
                                    <label>Year</label>
                                    <input type="text" id="syear" name="syear" class="form-control" value="<%=syear%>" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="text" id="spass" name="spass" class="form-control" value="<%=spass%>" required="true">
                                </div>                                  
                                
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Save</button>                               
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- jquery vendor -->
    <script src="../js/lib/jquery.min.js"></script>
    <script src="../js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="../js/lib/menubar/sidebar.js"></script>
    <script src="../js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->

    <script src="../js/lib/bootstrap.min.js"></script>
    <script src="../js/scripts.js"></script>
    
    <!-- bootstrap -->
    <script src="../js/lib/calendar-2/moment.latest.min.js"></script>
    <script src="../js/lib/calendar-2/pignose.calendar.min.js"></script>
    <script src="../js/lib/calendar-2/pignose.init.js"></script>


    <script src="../js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="../js/lib/weather/weather-init.js"></script>
    <script src="../js/lib/circle-progress/circle-progress.min.js"></script>
    <script src="../js/lib/circle-progress/circle-progress-init.js"></script>
    <script src="../js/lib/chartist/chartist.min.js"></script>
    <script src="../js/lib/sparklinechart/jquery.sparkline.min.js"></script>
    <script src="../js/lib/sparklinechart/sparkline.init.js"></script>
    <script src="../js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="../js/lib/owl-carousel/owl.carousel-init.js"></script>
    <!-- scripit init-->
    <script src="../js/dashboard2.js"></script>
    
    </body>
</html>

