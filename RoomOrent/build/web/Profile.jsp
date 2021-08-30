<%@page import="dataset.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="dao.RoomDao"%>
<%@page import="databaseoperation.ConnectionProvider"%>
<%@page isErrorPage="true" %>
<%@page errorPage="error_page.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <link href="css/profile.css" rel="stylesheet" type="text/css"/>
  
</head>
<body style="background-color: activeborder;">
<!--navbar start-->
<%@include file="profile_navbar.jsp" %>
<%@include file="profile_intro.jsp" %>
<%@include file="Filter_Post.jsp" %>
<div class="container-fluid" id="loadroom">

</div>

<%@include file="home_footer.jsp" %>
</body>
<script>
    function loadpostbyfilter()
    {
        var cname=document.getElementById("city_name").value;
        var min_r=document.getElementById("min_rent").value;
        var max_r=document.getElementById("max_rent").value;
        var pincode=document.getElementById("pincode").value;
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function()
        {
            document.getElementById("loadroom").innerHTML=xmlhttp.responseText;
        }
        xmlhttp.open("POST","Load_Room.jsp?c_name="+cname+"&min_rent="+min_r+"&max_rent="+max_r+"&p_code="+pincode,true);
        xmlhttp.send();
    }
    $(document).ready(
            loadpostbyfilter());
    
    function loadRooms(val)
    {
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function()
        {
            document.getElementById("loadroom").innerHTML=xmlhttp.responseText;
        }
        xmlhttp.open("POST","Load_Room.jsp?p_code="+val,true);
        xmlhttp.send();
    }
    function loadpostbypincode(val)
    {
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function()
        {
            document.getElementById("loadroom").innerHTML=xmlhttp.responseText;
        }
        xmlhttp.open("POST","Load_Room.jsp?p_code="+val,true);
        xmlhttp.send();
    }
</script>
</html>

