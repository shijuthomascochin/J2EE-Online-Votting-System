<%-- 
    Document   : SearchVote
    Created on : 21 Nov, 2022, 6:41:35 PM
    Author     : akhil
--%>

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
                    <div class="col-lg-5 p-r-0 title-margin-right">
                        <div class="page-header">
                            <%
                                String pname = (String)session.getAttribute("pname");
                                if(pname == null)
                                {
                                    %>
                                    <h5 style="color: red;">No Result Found.</h5>
                                        <%
                                }
                                else
                                {
                                ArrayList<String> cl = (ArrayList<String>)session.getAttribute("val");                                
                            %>
                            <div class="page-title">
                                <h1>Search Result</h1>
                            </div>
                            <!--Table begin-->
                            <div class="card-body card">
                                    <div class="table-responsive">                                           
                                        <h5 style="text-align: left;">Position : <%=pname%></h5>
                                        <table class="table student-data-table m-t-20">
                                            <thead>
                                                <tr>
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
                                                </tr>
                                                <%
                                                 }
                                                %>
                                            </tbody>
                                        </table>                                                                                       
                                    </div>
                                </div>
                            <!--table end--> 
                            <%
                            }
                            %>
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

