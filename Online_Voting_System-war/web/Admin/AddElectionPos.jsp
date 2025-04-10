<%-- 
    Document   : AddElectionPos
    Created on : 19 Nov, 2022, 5:14:24 PM
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
                        <%
                                        String pid = (String)session.getAttribute("pid");
                        %>
                        <div class="login-form">
                            <h4>Add Election Position</h4>
                            <form action="../AddElePos" method="POST">
                                <div class="form-group">
                                    <label>Position ID</label>
                                    <input type="text" id="pid" name ="pid" class="form-control" value="<%=pid%>" required="true" readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>Position Name</label>
                                    <input type="text" id="pname" name="pname" class="form-control" placeholder="" required="true">
                                </div> 
                                <div class="form-group">
                                    <label>Last Date for Application</label>
                                    <input type="date" id="aldate" name="aldate" onfocusout="myDF()" class="form-control" placeholder="" required="true">
                                </div>                                  
                                <div class="form-group">
                                    <label>Voting Date</label>
                                    <input type="date" id="vdate" name="vdate" class="form-control" placeholder="" required="true">
                                </div> 
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Save</button>
              
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script>
    function myDF(){
    var tod = document.getElementsByName('aldate')[0].value;
    document.getElementsByName("vdate")[0].setAttribute('min', tod);
    }
    var today = new Date().toISOString().split('T')[0];
    document.getElementsByName('aldate')[0].setAttribute('min', today);
</script>
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
