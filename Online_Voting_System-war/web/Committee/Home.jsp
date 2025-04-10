<%-- 
    Document   : Home
    Created on : 16 Nov, 2022, 11:17:13 PM
    Author     : akhil
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] sv = ((String)session.getAttribute("sval")).split("[',']");
    ArrayList<String> posn = (ArrayList<String>)session.getAttribute("epnames");
    int vno = Integer.parseInt((String)session.getAttribute("vno"));
%>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>
 <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-11 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Hello, Committee Admin</h1>
                                <br>
                            
                              <div class="row no-m-t no-m-b">
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Committee Members</span>

                                            <span class="card-title"><br><br><%=sv[3]%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Contesters</span>

                                            <span class="card-title"><br><br><%=sv[4]%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                             </div>
                                            
                             <div class="row no-m-t no-m-b">
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Election Positions</span>

                                            <span class="card-title"><br><br><%=sv[2]%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Students Voted</span>

                                            <span class="card-title"><br><br><%=vno%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                
                             </div>
                              <div class="row no-m-t no-m-b">
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Students</span>

                                            <span class="card-title"><br><br><%=sv[0]%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Schools </span>

                                            <span class="card-title"><br><br><%=sv[1]%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                             </div>
                                            
                             <div class="row no-m-t no-m-b ">
                                
                                <div class="col s6 m6 l">
                                    <div class="card stats-card"  style=" text-align: left;">
                                        <div class="card-content"style="color: black;">
                                            <div class="table-responsive">
                                            <table class="table student-data-table m-t-2 "  style=" text-align: left;">
                                            <thead  style=" text-align: left;">
                                                <tr>
                                                    <th>Election Position Names</th>
                                                </tr>
                                            </thead>
                                            <tbody  style=" text-align: left;">
                                                <%
                                                for(String st2: posn)
                                                {
                                                    %>
                                                <tr>
                                                    <td>
                                                       <%=st2%> 
                                                    </td>
                                                </tr>
                                                <%
                                                }
                                                %>
                                            </tbody>
                                        </table>  
                                    </div>                                           
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                            
                                <div class="col s12 m12 l4">
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
