<%-- 
    Document   : ViewVote
    Created on : 21 Nov, 2022, 5:30:23 PM
    Author     : akhil
--%>

<%@page import="ContesterPackage.Contester"%>
<%@page import="ElectionPackage.ElePos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>
 <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-5 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>View Vote</h1>
                            </div>
                            <%
                                List<ElePos> el = (List<ElePos>)session.getAttribute("eleposlist");
                                List<Contester> c = (List<Contester>)session.getAttribute("contesterlist");
                            %>
                            <!--Table begin-->
                            <div class="card-body card">
                                    <div class="table-responsive">                                           
                                        <h5 style="text-align: left;">Search By Position :</h5>
                                        <form action="../SearchVote" method="POST">
                                                <select name="pid" id="pid" class="form-control" required="true">
                                                    <option class="form-control" value="">Select Position</option>
                                                    <%
                                                        for(ElePos ep1:el)
                                                        {
                                                            %>
                                                            <option class="form-control" value="<%=ep1.getPid()%>"><%=ep1.getPname()%></option>
                                                            <%
                                                        }
                                                    %>
                                                </select><br>
                                                <input type="submit" value ="Search"/>
                                            </form>                                                                                           
                                    </div>
                                </div>
                            <!--table end-->                            
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
