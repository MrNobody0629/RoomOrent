
<%@page import="dao.UserDao"%>
<%@page import="dataset.Rooms"%>
<%@page import="dao.RoomDao"%>
<%@page import="databaseoperation.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    User usr=(User)session.getAttribute("currentUser");
    if(usr==null)
    response.sendRedirect("Login_User.jsp");
%>
<%
    int r_id=Integer.parseInt(request.getParameter("room_id"));
    RoomDao rd=new RoomDao(ConnectionProvider.getConnection());
    Rooms r=rd.getRoomByRoomId(r_id);
%>
<%
    int o_id=r.getOwnerid();
    UserDao ud=new UserDao(ConnectionProvider.getConnection());
    User u=ud.getUserByUserId(o_id);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/285aa4f22d.js" crossorigin="anonymous"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link href="css/profile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="profile_navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 mt-2">
                    <%@include file="home_carousel.jsp" %>
                </div>
                <div class="col-md-4">
                    <div class="card m-1 bg-dark">
                        <div class="card-body">
                            <h1></h1>
                            
                        </div>
                        <table class="table table-dark">
                            <h3 class="px-3 text-white">Room details</h3>
                            <tr>
                                <td>Owner Name</td>
                                <td><%=u.getName()%></td>
                            </tr>
                            <tr>
                                <td>Owner Contact</td>
                                <td><%=u.getMobile()%></td>
                            </tr>
                            <tr>
                                <td class="card-title">Address</td>
                                <td class="card-text"><%=r.getAddressline1()%> <%=r.getAddressline2()%> <%=r.getState()%> <%=r.getDistrict()%> <%=r.getPincode()%></td>
                            </tr>
                            <tr>
                                <td>Room dimension</td>
                                <td><%=r.getDimensionw()%> X <%=r.getDimensionh()%></td>
                            </tr>
                            <tr>
                                <td>Rent</td>
                                <td><%=r.getRentdemand()%>/permonth</td>
                            </tr>
                            <tr>
                                <td>Bed</td>
                                <td><%=r.getBed()%> </td>
                            </tr>
                            <tr>
                                <td>Fan</td>
                                <td><%=r.getFan()%></td>
                            </tr>
                            <tr>
                                <td>PostDate</td>
                                <td><%=r.getPostdate()%></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
                                <%@include file="home_footer.jsp" %>
    </body>
</html>
