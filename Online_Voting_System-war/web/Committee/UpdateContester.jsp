<%-- 
    Document   : UpdateContester
    Created on : 20 Nov, 2022, 6:16:21 PM
    Author     : akhil
--%>

<%@page import="ContesterPackage.Contester"%>
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
                            <h4>Edit Contester</h4>
                            <%
                                Contester c = (Contester)session.getAttribute("con");
                            %>
                            <form action="../UpdateContesterS" method="POST">
                                <div class="form-group">
                                    <label>Contester Student ID</label>
                                    <input type="text" id="sid" name ="sid" class="form-control" value="<%=c.getSid()%>" readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>Contester Name</label>
                                    <input type="text" id="sname" name="sname" class="form-control" value="<%=c.getSname()%>" readonly="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Election Position ID</label>
                                    <input type="text" id="pid" name="pid" class="form-control" value="<%=c.getPid()%>" readonly="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Election Position Name</label>
                                    <input type="text" id="pname" name="pname" class="form-control" value="<%=c.getPname()%>" readonly="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>School ID</label>
                                    <input type="text" id="scid" name ="scid" class="form-control" value="<%=c.getSchool_id()%>" readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>School Name</label>
                                    <input type="text" id="scname" name="scname" class="form-control" value="<%=c.getSchool_name()%>" readonly="true">
                                </div> 
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" id="uname" name ="uname" class="form-control" value="<%=c.getUname()%>" required="true">
                                </div>
                                <div class="form-group">
                                    <label>School Name</label>
                                    <input type="text" id="pass" name="pass" class="form-control" value="<%=c.getPass()%>" required="true">
                                </div> 
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Save</button>
                                <!-- <div class="social-login-content">
                                    <div class="social-button">
                                        <button type="button" class="btn btn-primary bg-facebook btn-flat btn-addon m-b-10"><i class="ti-facebook"></i>Sign in with facebook</button>
                                        <button type="button" class="btn btn-primary bg-twitter btn-flat btn-addon m-t-10"><i class="ti-twitter"></i>Sign in with twitter</button>
                                    </div>
                                </div> -->
<!--                                <div class="register-link m-t-15 text-center">
                                    <p>Don't have account ? <a href="#"> Sign Up Here</a></p>
                                </div>-->
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