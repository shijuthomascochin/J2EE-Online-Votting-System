<%-- 
    Document   : Home
    Created on : 19 Nov, 2022, 11:39:34 AM
    Author     : akhil
--%>

<%@page import="ContesterPackage.Contester"%>
<%@page import="ElectionPackage.ElePos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String uname = (String)session.getAttribute("uname");
    List<ElePos> el = (List<ElePos>)session.getAttribute("el");
    List<Contester> cl = (List<Contester>)session.getAttribute("cl");
%>
<%@include file="HnSbar.jsp" %>
 <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Hello, <%=uname%></h1>
                            </div>
                        </div>
                        <div class="page-header card">
                            <div class="page-title">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table student-data-table m-t-20">
                                            <thead>
                                                <tr>
                                                    <th>Election Position</th>
                                                    <th>Last Date to Submit Nomination</th>
                                                    <th>Election Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    if(el.size()==0)
                                                    {
                                                %>
                                                <h5 style="color: red"><br>No Election Declared.</h5>
                                                <%
                                                    }
                                                    else
                                                    {
                                                        for(ElePos epl: el)
                                                        {
                                                        %>
                                                <tr>
                                                <td>
                                                    <%=epl.getPname()%>
                                                </td>
                                                <td>
                                                    <%=epl.getPapplydate()%>
                                                </td>
                                                <td>
                                                    <%=epl.getPvotedate()%>
                                                </td>
                                                </tr>
                                                    <%
                                                        }
                                                    }
                                                    %>                                               
                                            </tbody>
                                        </table>  
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="page-header card">
                            <div class="page-title">
                            <%
                                if(cl.size()==0)
                                {
                            %>
                            <h5 style="color: red"><br>No Candidates from your School.</h5>
                            <%
                                }
                                else
                                {
                            %>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table student-data-table m-t-20">
                                            <thead>
                                                <tr>
                                                    <th>Candidates from your School</th>
                                                    <th>Election Position</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                        for(Contester epl: cl)
                                                        {
                                                        %>
                                                <tr>
                                                <td>
                                                    <%=epl.getSname()%>
                                                </td>
                                                <td>
                                                    <%=epl.getPname()%>
                                                </td>
                                                </tr>
                                                    <%
                                                        }
                                                    }
                                                    %>                                               
                                            </tbody>
                                        </table>  
                                    </div>
                                </div>
                            </div>
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
