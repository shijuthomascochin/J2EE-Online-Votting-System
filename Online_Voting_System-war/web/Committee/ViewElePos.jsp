<%-- 
    Document   : ViewElpPos
    Created on : 19 Nov, 2022, 7:57:08 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>

<!-- jquery vendor -->
    <script src="../js/lib/jquery.min.js"></script>
    <script src="../js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="../js/lib/menubar/sidebar.js"></script>
    <script src="../js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <h3 class="col-lg-12" style="margin-top: 20px;">List Election Positions</h3><br>
                    <div class="col-lg-6 p-r-0 title-margin-right">
                        <div class="page-header card">
                            <div class="page-title">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table student-data-table m-t-20">
                                            <thead>
                                                <tr>
                                                    <th>Position ID</th>
                                                    <th>Position Name</th>
                                                    <th>Last Date for Application</th>
                                                    <th>Voting Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <jsp:include page="/ListElePos" flush="true"/>
                                               
                                            </tbody>
                                        </table>                                           
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>    
                </div>
            </div>
        </div>
    </div>
    
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
