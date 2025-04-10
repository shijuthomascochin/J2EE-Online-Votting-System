<%-- 
    Document   : UpdateSchool
    Created on : 18 Nov, 2022, 12:45:41 AM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>

<div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content">
                        <!-- <div class="login-logo">
                            <a href="index.html"><span>Focus</span></a>
                        </div> -->
                        <div class="login-form">
                            <h4>Edit School</h4>
                            <form action="../Online_Voting_System-war/UpdateSchoolS" method="POST">
                                <div class="form-group">
                                    <label>School ID</label>
                                    <%
                                        String sid = (String)session.getAttribute("sid");
                                        String sname = (String)session.getAttribute("sname");
                                    %>
                                    <input type="text" id="sid" name ="sid" class="form-control" value="<%=sid%>" readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>School Name</label>
                                    <input type="text" id="sname" name="sname" class="form-control" value="<%=sname%>" required="true">
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
