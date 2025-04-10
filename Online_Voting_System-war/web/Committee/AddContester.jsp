<%-- 
    Document   : AddContester
    Created on : 20 Nov, 2022, 3:01:12 PM
    Author     : akhil
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ElectionPackage.ElePos"%>
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
                                        ArrayList<String> sid = (ArrayList<String>)session.getAttribute("sid");
                                        List<ElePos> lep = (List<ElePos>)session.getAttribute("elepos");
                                        String[] st=null;
                        %>
                        <div class="login-form">
                            <h4>Add Contester</h4>
                            <form action="../AddContester" method="POST">
                                <div class="form-group">
                                    <label>Contester</label>
                                    <select name="sid" id="sid" class="form-control" required="true">
                                      <option class="form-control" value="">Select Contester</option>
                                      <%
                                          for(String s1 : sid){
                                              st=s1.split("[',']");
                                        %>
                                        <option class="form-control" value="<%=st[0]%>"><%=st[1]%></option>
                                      <%     
                                          }
                                      %>
                                    </select>
                                </div>                                    
                                <div class="form-group">
                                    <label for="pid">Election Position</label>
                                    <select name="pid" id="pid" class="form-control" value="" required="true">
                                      <option class="form-control" value="">Select Position</option>
                                      <%
                                          for(ElePos s2 : lep){
                                            String stri = s2.getPid();
                                            String strn = s2.getPname();
                                        %>
                                        <option class="form-control" value="<%=stri%>"><%=strn%></option>
                                      <%     
                                          }
                                      %>
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
