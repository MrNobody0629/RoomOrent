<%@page import="dataset.User"%>
<%
    User us=(User)session.getAttribute("currentUser");
    if(us==null)
    {
    response.sendRedirect("Login_User.jsp");
    }
%>
<nav class="navbar navbar-expand-md bg-dark navbar-dark sticky-top">
    <a class="navbar-brand" href="Profile.jsp">RoomOrent</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#"><span class="fas fa-hashtag"></span> Our Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Aboutus.jsp"><span class="fas fa-globe-asia"></span> About us</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="#"><span class="fas fa-phone-alt"></span> Contact us</a>
      </li>   
      <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="navbardrop">More
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Find</a>
        <a class="dropdown-item" href="Post_Room.jsp">Post</a>
        <a class="dropdown-item" href="#">About US</a>
      </div>
    </li>
    </ul>
      <div class="navbar-nav" id="profilemenu">
      <div class="nav-item dropleft">
          <a class="nav-link" href="#" id="profiledrop" data-toggle="dropdown"><span class="far fa-user-circle"></span> <%=us.getName()%></a>
          <div class="dropdown-menu dropdown" id="logeduser">
              <a class="dropdown-item dropleft" data-toggle="dropdown" href="#">Profile</a>
                  <div class="dropdown-menu">
                      <div class="card" style="width:200px">
                          <img class="card-header img-fluid text-center" src="profile/<%=us.getProfilepic()%>" alt="Card image" style="border-radius: 50%; width: 150px; height: 150px;">
                          <div class="card-body">
                              <h4 class="card-title"><%=us.getName()%></h4>
                              <p class="card-text">User since : N/A</p>
                              <a href="Show_Profile.jsp" class="btn btn-primary">See Profile</a>
                          </div>
                      </div>
                  </div>
              <a class="dropdown-item" href="#">Bookings</a>
              <a class="dropdown-item" href="Posts.jsp">Posts</a><hr class="bg-success">
              <a class="dropdown-item" href="Logout"><span class="fas fa-sign-out-alt"></span> Logout</a>
          </div>
      </div>
  </div>
  </div>
</nav>


<!--<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.jsp">
        <img src="img/pexel.jpg" width="30" height="30" class="d-inline-block align-top" alt="" style="border-radius: 25%;">
    </a>
    <a class="navbar-brand" href="index.jsp">RoomOrent</a>
    for mobile view button
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
      <ul class="navbar-nav">
          <a class="nav-link" href="loginpage.jsp">
              <span class="fa fa-user-circle">login</span>
          </a>
          <a class="nav-link" href="registrationpage.jsp">
              <span class="fa fa-user-plus">register</span>
          </a>
      </ul>
              
  </div>
</nav>-->
