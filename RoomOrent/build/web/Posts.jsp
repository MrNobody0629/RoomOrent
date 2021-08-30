<%@page import="java.util.ArrayList"%>
<%@page import="dataset.Rooms"%>
<%@page import="databaseoperation.ConnectionProvider"%>
<%@page import="dao.RoomDao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome RoomOrent</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/285aa4f22d.js" crossorigin="anonymous"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link href="css/profile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color: activeborder;">
        <%@include file="profile_navbar.jsp" %>
        <%
            RoomDao rdo=new RoomDao(ConnectionProvider.getConnection());
            Rooms rl=rdo.getRoomByUID(us.getUid());
            if(rl==null)
            {
                out.println("No room found");
            }
           
        %>
        <div class="container">
            <div class="main-body">
                <div class="row gutters-sm justify-content-center">
                    <div class="col-md-3 bg-primary text-dark ms-0">
                        <ul class="nav nav-tabs flex-column bg-white" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#room1">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#room2">Menu 1</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#room3">Menu 2</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-8 tab-content">
                        <div id="room1" class="card mb-3 bg-dark text-light tab-pane active">
                            <div class="card-body">
                                <div class="text-center"><h2>Room Details 1</h2></div>
                                <hr class="bg-white">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getAddressline1()%> <%=rl.getAddressline2()%> <%=rl.getState()%> <%=rl.getDistrict()%> <%=rl.getPincode()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Room dimension</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getDimensionw()%> X <%=rl.getDimensionh()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Rent</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getRentdemand()%>/permonth</div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Bed</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getBed()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Fan</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getFan()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">PostDate</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getPostdate()%></div>
                                </div>
                            </div>
                        </div>
                        <div id="room2" class="card mb-3 bg-dark text-light tab-pane">
                            <div class="card-body">
                                <div class="text-center"><h2>Room Details 2</h2></div>
                                <hr class="bg-white">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getAddressline1()%> <%=rl.getAddressline2()%> <%=rl.getState()%> <%=rl.getDistrict()%> <%=rl.getPincode()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Room dimension</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getDimensionw()%> X <%=rl.getDimensionh()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Rent</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getRentdemand()%>/permonth</div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Bed</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getBed()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Fan</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getFan()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">PostDate</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getPostdate()%></div>
                                </div>
                            </div>
                        </div>
                        <div id="room3" class="card mb-3 bg-dark text-light tab-pane">
                            <div class="card-body">
                                <div class="text-center"><h2>Room Details</h2></div>
                                <hr class="bg-white">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getAddressline1()%> <%=rl.getAddressline2()%> <%=rl.getState()%> <%=rl.getDistrict()%> <%=rl.getPincode()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Room dimension</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getDimensionw()%> X <%=rl.getDimensionh()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Rent</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getRentdemand()%>/permonth</div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Bed</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getBed()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Fan</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getFan()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">PostDate</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=rl.getPostdate()%></div>
                                </div>
                            </div>
                        </div>
                        <div class="picture1 card mb-3 bg-dark text-light">
                            <form class="card-body" method="post" action="addroompic" id="add-room-pic">
                                <div class="text-center"><h2>Add Pictures</h2></div>
                                <hr class="bg-white">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Pictures 1</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><input type="file" name="pic-1"><button type="submit" class="btn btn-outline-primary" style="float: right;">Save</button></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Pictures 2</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><input type="file" name="pic-2"><button type="submit" class="btn btn-outline-primary" style="float: right;">Save</button></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Pictures 3</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><input type="file" name="pic-3"><button type="submit" class="btn btn-outline-primary" style="float: right;">Save</button></div>
                                </div>
                                <div class="row" style="display: none;">
                                    <div class="col-sm-9 text-secondary"><input type="number" name="rid" value="<%=rl.getId()%>"></div>
                                </div>
                                <hr>
                                <div class="row justify-content-center">
                                    <button type="submit" class="col-md-4 m-2 btn btn-outline-primary">Save</button>
                                    <button type="reset" class="col-md-4 m-2 btn btn-outline-danger">Reset</button>
                                </div>
                                <hr>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="home_footer.jsp" %>
    </body>
    <script>
        function showinput()
        {
            document.getElementById("inputFormRow").style.display = "block";
        }
        
        function hideinput()
        {
            document.getElementById("inputFormRow").style.display = "none";
        }
        
        $(document).ready(
                $('#add-room-pic').on("submit",function(event)
        {
            event.preventDefault();
            console.log("button clicked")
            let form=new FormData(this);
            $.ajax({
                url:"addroompic",
                method:"post",
                data:form,
                success:function(data,textStatus,jqXHR)
                {
                    console.log(data);
                    if(data.trim()=="done")
                    {
                        swal("Good job!", "Updated successfully", "success");
                    }
                    else
                    {
                        swal("Error!!", "Something went wrong", "error");
                    }
                },
                processData:false,
                contentType:false,
            })
            
            
        })
                );
    </script>
</html>