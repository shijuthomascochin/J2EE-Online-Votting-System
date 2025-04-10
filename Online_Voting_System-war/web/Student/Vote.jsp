<%-- 
    Document   : Vote
    Created on : 20 Nov, 2022, 9:34:51 PM
    Author     : akhil
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
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
                                <h1>VOTE</h1>
                            </div>
                            <%
                                String empty = (String)session.getAttribute("empty");
                                ArrayList<String> opsid = (ArrayList<String>)session.getAttribute("opsid");
                                ArrayList<String> ops = (ArrayList<String>)session.getAttribute("ops");
                                String pos="";
                                SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
                                if(empty.equals("yes"))
                                {
                                    %>
                                    <h5 style="color: red"><br>No candidate to vote.</h5>
                            <%
                                }
                                else
                                {
                                    for(String opsid1 : opsid)
                                    {
                                    System.out.print(opsid.size());
                                        List<String> sid = new ArrayList<String>();
                                        List<String> pid = new ArrayList<String>();
                                        List<String> sname = new ArrayList<String>();
                                        List<String> vdate = new ArrayList<String>();
                                        for(String ops1 : ops)
                                        {
                                            String[] str = ops1.split("[',']");
                                            if(str[2].equals(opsid1))
                                            {
                                                pos = str[3];
                                                sid.add(str[0]);
                                                sname.add(str[1]);
                                                vdate.add(str[4]);
                                            }
                                        }
                                    
                            %>
                            <!--Table begin-->
                            <div class="card-body card">
                                    <div class="table-responsive">                                           
                                        <table class="table student-data-table">
                                            <thead>
                                                <tr>
                                                    <th style="text-align: left;">Position : <%=pos%> </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th><form action="../AddVote" method="POST">
                                                            <input type="hidden" name="pid" value="<%=opsid1%>"/>
                                                            <%
                                                                String tt ="";
                                                                for(int i=0; i< sid.size();i++)
                                                                {
                                                                    Date d1 = sdformat.parse(vdate.get(i));
                                                                    Date d2 = sdformat.parse(sdformat.format(new Date()));
                                                                    if(d1.compareTo(d2)==0)
                                                                    {
                                                                %>
                                                                        <input type="radio" id="sid" name="sid" value="<%=sid.get(i)%>" required="true"/>
                                                                        <label for="conid">Vote for <%=sname.get(i)%> </label><br>
                                                           <% 
                                                                    }
                                                                    else
                                                                    {
                                                                        tt=vdate.get(i);
                                                                    }
                                                                }
                                                                if(!tt.isEmpty())
                                                                {
                                                                %>
                                                                    <h6 style="color: red;">Election on <%=tt%></h6>
                                                                <%
                                                                }
                                                                else
                                                                {
                                                                %>
                                                                    <input type="submit" value="Vote"/>
                                                                <%
                                                                }
                                                                %>
                                                        </form>
                                                    </th>
                                                </tr>  
                                            </tbody>
                                        </table>                                           
                                    </div>
                                </div>
                            <!--table end-->
                            <% 
                                }
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
