<%@page import="dataset.User"%>
<%
    User ush=(User)session.getAttribute("currentUser");
    if(ush==null)
    {
    response.sendRedirect("Login_User.jsp");
    }
%>
<div class="container-fluid bg-primary banner-home">
    <div class="row">
        <div class="col-md-4 offset-1 mt-4">
            <h1>Welcome <%=ush.getName()%></h1>
            <h5>I'm glad you are here...</h5>
            <a class="btn btn-outline-dark" href="Find_Room.jsp" style="text-decoration: navajowhite">Find a Room</a>
            <a class="btn btn-outline-dark" href="Post_Room.jsp">Post a Room</a>
            <br>
            <br>
        
        </div>
    </div>
</div>