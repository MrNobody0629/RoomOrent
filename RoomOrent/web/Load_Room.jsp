<%@page import="java.util.List"%>
<%@page import="dao.RoomDao"%>
<%@page import="dataset.Rooms"%>
<%@page import="databaseoperation.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RoomDao d=new RoomDao(ConnectionProvider.getConnection());
    List<Rooms> list=null;
    list=d.getRoomByDRF(request.getParameter("c_name"),request.getParameter("min_rent"),request.getParameter("max_rent"),request.getParameter("p_code"));
    if(list.isEmpty())
    {%>
    <h2 class="text-center">Rooms are not Available</h2><br>
    <div class="text-center">
        <div class="spinner-grow text-muted"></div>
        <div class="spinner-grow text-primary"></div>
        <div class="spinner-grow text-success"></div>
        <div class="spinner-grow text-info"></div>
        <div class="spinner-grow text-warning"></div>
        <div class="spinner-grow text-danger"></div>
        <div class="spinner-grow text-secondary"></div>
        <div class="spinner-grow text-dark"></div>
        <div class="spinner-grow text-light"></div>
    </div>
        <%
    }
    else
    {
    int count=3;
    for(Rooms r:list)
    {
        if(count%3==0)
        {
%>
<div class="row">
    <div class="col-md-4 text-white">
        <div class="card m-1 bg-dark" id="roomcard">
                <a href="Show_Room_Details.jsp?room_id=<%=r.getId()%>">
                    <img src="roompic/home-4.jpg" class="card-img-top" alt=""/>
                </a>
                <div class="card-body">
                    <h5 class="card-title">Address:</h5>
                    <p class="card-text"><%=r.getAddressline1()%> <%=r.getAddressline2()%> <%=r.getState()%> <%=r.getDistrict()%> <%=r.getPincode()%></p>
                </div>
                <table class="table table-dark table-striped">
                    <tr>
                        <td>Room dimension :</td>
                        <td><%=r.getDimensionw()%> X <%=r.getDimensionh()%></td>
                    </tr>
                    <tr>
                        <td>RentDemand :</td>
                        <td><%=r.getRentdemand()%>/permonth</td>
                    </tr>
                    <tr>
                        <td>Bed & Fan : </td>
                        <td><%=r.getBed()%> & <%=r.getFan()%></td>
                    </tr>
                </table>
            </div>
        </div>
<%
            count++;
        }
        else if(count%3==1)
        {
%>
        <div class="col-md-4 text-white">
            <div class="card m-1 bg-dark">
                <a href="Show_Room_Details.jsp?room_id=<%=r.getId()%>">
                    <img src="roompic/home-4.jpg" class="card-img-top" alt=""/>
                </a>
                <div class="card-body">
                    <h5 class="card-title">Address:</h5>
                    <p class="card-text"><%=r.getAddressline1()%> <%=r.getAddressline2()%> <%=r.getState()%> <%=r.getDistrict()%> <%=r.getPincode()%></p>
                </div>
                <table class="table table-dark table-striped">
                    <tr>
                        <td>Room dimension :</td>
                        <td><%=r.getDimensionw()%> X <%=r.getDimensionh()%></td>
                    </tr>
                    <tr>
                        <td>RentDemand :</td>
                        <td><%=r.getRentdemand()%>/permonth</td>
                    </tr>
                    <tr>
                        <td>Bed & Fan : </td>
                        <td><%=r.getBed()%> & <%=r.getFan()%></td>
                    </tr>
                </table>
            </div>
        </div>
<%
            count++;
        }
        else
        {
%>
        <div class="col-md-4 text-white">
            <div class="card m-1 bg-dark">
                <a href="Show_Room_Details.jsp?room_id=<%=r.getId()%>">
                    <img src="roompic/home-4.jpg" class="card-img-top" alt=""/>
                </a>
                <div class="card-body">
                    <h5 class="card-title">Address:</h5>
                    <p class="card-text"><%=r.getAddressline1()%> <%=r.getAddressline2()%> <%=r.getState()%> <%=r.getDistrict()%> <%=r.getPincode()%></p>
                </div>
                <table class="table table-dark table-striped">
                    <tr>
                        <td>Room dimension :</td>
                        <td><%=r.getDimensionw()%> X <%=r.getDimensionh()%></td>
                    </tr>
                    <tr>
                        <td>RentDemand :</td>
                        <td><%=r.getRentdemand()%>/permonth</td>
                    </tr>
                    <tr>
                        <td>Bed & Fan : </td>
                        <td><%=r.getBed()%> & <%=r.getFan()%></td>
                    </tr>
                </table>
            </div>
        </div>
</div>
<%
            count++;
        }
        }
}
%>