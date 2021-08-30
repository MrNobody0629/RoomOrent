<%@page import="dataset.User"%>
<%
    User us=(User)session.getAttribute("currentUser");
    if(us==null)
    {
    }
    else
    {response.sendRedirect("Profile.jsp");}
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome RoomOrent</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/285aa4f22d.js" crossorigin="anonymous"></script>
  <link href="css/index.css" rel="stylesheet" type="text/css"/>
  <style>
      .banner-home
{
    clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 95%, 70% 88%, 43% 100%, 20% 94%, 0 98%);
}
  </style>
</head>
<body style="background-color: activeborder;">
<!--navbar start-->
<%@include file="home_navbar.jsp" %>
<%@include file="home_intro.jsp" %>
<%@include file="our_services.jsp" %>
<br>
<div class="container-fluid bg-primary banner-home" id="carousel">
    <div class="container">
  <h3>Collapsible Navbar</h3>
  <p>In this example, the navigation bar is hidden on small screens and replaced by a button in the top right corner (try to re-size this window).</p>
  <p>Only when the button is clicked, the navigation bar will be displayed.</p>
  <p>Tip: You can also remove the .navbar-expand-md class to ALWAYS hide navbar links and display the toggler button.</p>
</div>
</div>
<%--<%@include file="home_carousel.jsp" %>--%>
<!--navbar end-->
<%@include file="home_footer.jsp" %>
</body>
</html>
