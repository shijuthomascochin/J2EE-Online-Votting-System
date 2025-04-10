<%-- 
    Document   : UpdateCommittee
    Created on : 19 Nov, 2022, 2:48:02 PM
    Author     : akhil
--%>

<%@page import="StudentPackage.Student"%>
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
                                        String status = (String)session.getAttribute("status");
                                        String cname = (String)session.getAttribute("cname");
                                        String sname = (String)session.getAttribute("sname");
                                        String cpass = (String)session.getAttribute("cpass");
                        %>
                        <div class="login-form">
                            <h4>Edit Committee</h4>
                            <form action="../UpdateCommitteeS" method="POST">
                                <div class="form-group">
                                    <label>Committee Member ID</label>                                      
                                    <input type="text" id="sid" name ="sid" class="form-control" value="<%=sid%>" required="true" readonly="true">    
                                </div>
                                <div class="form-group">
                                    <label>Committee Member </label>                                      
                                    <input type="text" id="sname" name ="sname" class="form-control" value="<%=sname%>" required="true" readonly="true">    
                                </div>
                                <div class="form-group">
                                    <label for="status">Committee Member Status</label>
                                    <select name="status" id="status" class="form-control" required="true">
                                      <option class="form-control" value="<%=status%>"><%=status%></option>
                                      <option class="form-control" value="Active">Active</option>
                                      <option class="form-control" value="Inactive">Inactive</option>
                                    </select>
                                </div>                                  
                                <div class="form-group">
                                    <label>Committee Member Email</label>                                      
                                    <input type="text" id="cname" name ="cname" class="form-control" value="<%=cname%>" required="true">    
                                </div>
                                <div class="form-group">
                                    <label>Committee Member Password</label>                                      
                                    <input type="text" id="cpass" name ="cpass" class="form-control" value="<%=cpass%>" required="true">    
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
