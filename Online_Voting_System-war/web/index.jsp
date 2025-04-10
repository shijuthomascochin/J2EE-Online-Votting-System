<%-- 
    Document   : index
    Created on : 16 Nov, 2022, 4:24:50 PM
    Author     : akhil
--%>

<%@page import="ElectionPackage.ElePos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String[] sv = ((String)session.getAttribute("vno1")).split("[',']");
    List<ElePos> el = (List<ElePos>)session.getAttribute("el");
%>
<%@include file="HnSbar.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-11 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Welcome Guest</h1> <br>
                            </div>
                        <div>
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
                             </div><br>
                        <div class="row no-m-t no-m-b">
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Election Positions </span>

                                            <span class="card-title"><br><br><%=el.size()%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-content"style="color: black;">

                                            <span class="card-title">Total Number of Students Votes</span>

                                            <span class="card-title"><br><br><%=sv[2]%></span>
                                        </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                             </div><br>
                             <div class="row no-m-t no-m-b">
                                
                                 <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        <div class="card-body ">
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
            
int pieV = 0;
if(Integer.parseInt(sv[0]) != 0){
pieV = ((Integer.parseInt(sv[2]))*100)/Integer.parseInt(sv[0]);}
                                                    %>                                               
                                            </tbody>
                                        </table>    
                                    </div>
                                </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                                 
                                <div class="col s12 m12 l4">
                                    <div class="card stats-card">
                                        
                             <div style="align-content:center;">
                                <canvas id="myChart" style="width:100%;max-width:800px"></canvas>
                             </div>
                                        <div id="sparkline-line"></div>
                                    </div>
                                </div>
                             </div>
        <script>
        var xValues = ["Students Voted","Students Not Voted"];
        var yValues = [<%=pieV%>, (100- <%=pieV%>)];
        var barColors = [
          "#288239",
          "#b91d47"
        ];

        new Chart("myChart", {
          type: "pie",
          data: {
            labels: xValues,
            datasets: [{
              backgroundColor: barColors,
              data: yValues
            }]
          },
          options: {
            title: {
              display: true,
              text: "Election Status"
            }
          }
        });
        </script>   
                             <div>       <br>
                             </div>
                        </div>
                    </div>
                    </div>
                </div>
               </div>
            </div>
        </div>

<!-- jquery vendor -->
    <script src="js/lib/jquery.min.js"></script>
    <script src="js/lib/jquery.nanoscroller.min.js"></script>
    
    <!-- nano scroller -->
    <script src="js/lib/menubar/sidebar.js"></script>
    <script src="js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->

    <script src="js/lib/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    
    <!-- bootstrap -->
    <script src="js/lib/calendar-2/moment.latest.min.js"></script>
    <script src="js/lib/calendar-2/pignose.calendar.min.js"></script>
    <script src="js/lib/calendar-2/pignose.init.js"></script>


    <script src="js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="js/lib/weather/weather-init.js"></script>
    <script src="js/lib/circle-progress/circle-progress.min.js"></script>
    <script src="js/lib/circle-progress/circle-progress-init.js"></script>
    <script src="js/lib/chartist/chartist.min.js"></script>
    <script src="js/lib/sparklinechart/jquery.sparkline.min.js"></script>
    <script src="js/lib/sparklinechart/sparkline.init.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel-init.js"></script>
    <!-- scripit init-->
    <script src="js/dashboard2.js"></script>
    
    </body>
</html>
