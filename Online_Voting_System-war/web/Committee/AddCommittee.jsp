<%-- 
    Document   : AddCommittee
    Created on : 19 Nov, 2022, 12:52:41 PM
    Author     : akhil
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>

<div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content">
                        <%
                                        ArrayList<String> cid = (ArrayList<String>)session.getAttribute("cid");
                        %>
                        <div class="login-form">
                            <h4>Add Committee</h4>
                            <form action="../AddCommittee" method="POST">
                                <div class="form-group">
                                    <label>Committee Member</label>
                                    <select name="sid" id="sid" class="form-control" required="true">
                                      <option class="form-control" value="">Select Member</option>
                                      <%
                                          for(String sc : cid){
                                              String[] st=sc.split("[',']");
                                        %>
                                        <option class="form-control" value="<%=st[0]%>"><%=st[1]%></option>
                                      <%     
                                          }
                                      %>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="status">Committee Member Status</label>
                                    <select name="status" id="status" class="form-control">
                                      <option class="form-control" value="Active">Active</option>
                                      <option class="form-control" value="Inactive">Inactive</option>
                                    </select>
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
