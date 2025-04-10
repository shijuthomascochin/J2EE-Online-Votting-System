<%-- 
    Document   : ViewVotes
    Created on : 21 Nov, 2022, 7:22:04 PM
    Author     : akhil
--%>

<%@page import="java.util.Collections"%>
<%@page import="javafx.print.Collation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ContesterPackage.Contester"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>
 <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>View Votes</h1>
                            </div>
                            <%
                                ArrayList<String> cl = (ArrayList<String>)session.getAttribute("cont");
                                Collections.sort(cl);
                                %>
                            <!--Table begin-->
                            <div class="card-body card">
                                    <div class="table-responsive"> 
                                        <table class="table student-data-table m-t-20">
                                            <thead>
                                                <tr>
                                                    <th>Position</th>
                                                    <th>School Name</th>
                                                    <th>Candidate Name</th>
                                                    <th>Number of Votes</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    for(String st2 : cl)
                                                    {
                                                        
                                                        String[] str2 = st2.split("[',']");
                                                %>
                                                <tr>
                                                    <td><%=str2[0]%></td>
                                                    <td><%=str2[1]%></td>
                                                    <td><%=str2[2]%></td>
                                                    <td><%=str2[3]%></td>
                                                </tr>
                                                <%
                                                 }
                                                %>
                                            </tbody>
                                        </table>                                                                                       
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

