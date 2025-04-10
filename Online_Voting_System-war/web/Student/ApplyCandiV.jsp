<%-- 
    Document   : ApplyCandiV
    Created on : 21 Nov, 2022, 9:11:07 PM
    Author     : akhil
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="ElectionPackage.ElePos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%@include file="HnSbar.jsp" %>
 <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-5 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Apply for Candidacy</h1>
                            </div>
                            <%
                                List<ElePos> el = (List<ElePos>)session.getAttribute("epos");
                                String str5 = (String)session.getAttribute("present");
                                if(str5.equals("no"))
                                {
                                    %>
                                    <h5 style="color: red;">Not eligible to apply for candidacy.</h5>
                                <%
                                }
                                else
                                {
                            %>
                            <!--Table begin-->
                            <div class="card-body card">
                                    <div class="table-responsive">                                           
                                        <h5 style="text-align: left;">Position : <br> <br>
                                        </h5>                                                                                         
                                        <form action="../AddContesterStudent" method="POST">
                                            <%
                                                for(ElePos epsl : el)
                                                {
                                                    SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
                                                    Date d1 = sdformat.parse(epsl.getPapplydate());
                                                    Date d2 = sdformat.parse(sdformat.format(new Date()));
                                                    if(d1.compareTo(d2) > 0)
                                                    {
                                                %>
                                                    <input type="radio" id="pid" name="pid" value="<%=epsl.getPid()%>" required="true"/>
                                                    <label for="pid">
                                                    <span style="color: black;"><%=epsl.getPname()%></span>
                                                    </label><br><br>
                                                 <%
                                                     }
                                                    else
                                                    {
                                                    %>
                                                    <!--<input type="radio" id="pid" name="pid" value="<%=epsl.getPid()%>" required="true"/>-->
                                                    <label for="pid">
                                                    <span style="color: black;">Application date for the <%=epsl.getPname()%> position timed out.</span>
                                                    </label><br><br>
                                                 <%
                                                    }
                                                 }
                                                 %>
                                                 
                                                <input type="submit" class="btn-primary" value ="Apply"/>
                                            </form>  
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
