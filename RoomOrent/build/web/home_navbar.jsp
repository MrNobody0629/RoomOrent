<nav class="navbar navbar-expand-md bg-dark navbar-dark sticky-top">
    <a class="navbar-brand" href="index.jsp">RoomOrent</a>
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
          <a class="nav-link" href="#" id="profiledrop" data-toggle="dropdown"><span class="far fa-user-circle"></span> User</a>
          <div class="dropdown-menu dropdown" id="logeduser">
              <a class="dropdown-item" href="Login_User.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
              <a class="dropdown-item" href="Register_user.jsp"><i class="fas fa-user-plus"></i> Register</a>
          </div>
      </div>
  </div>
  </div>
</nav>