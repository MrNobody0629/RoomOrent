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
        <div class="container">
            <div class="main-body">
                <nav aria-label="breadcrumb" class="main-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Profile.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)">User</a></li>
                        <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                    </ol>
                </nav>
                <!-- /Breadcrumb -->
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="profile/<%=us.getProfilepic()%>" alt="Admin" class="rounded-circle" width="150">
                                    <div class="mt-3" id="profilepicbox">
                                        <h4><%=us.getName()%></h4>
                                        <button class="btn btn-primary">View</button>
                                        <button class="btn btn-outline-primary" onclick="showinput()">Update</button>
                                        <br>
                                        <div id="inputFormRow" style="display: none;">
                                            <form id="updateok" action="updateprofilepic" method="post">
                                                <div class="input-group mb-3">
                                                    <input type="number" name="userid" class="form-control" value="<%=us.getUid()%>" style="display: none;">
                                                    <input type="file" name="updatepic" class="form-control" placeholder="Select file"><br>
                                                </div>
                                                <div class="input-group-append row justify-content-center">
                                                    <button class="col-md-5 btn btn-primary m-2" type="submit">Save</button>
                                                    <button class="col-md-5 btn btn-danger m-2" type="reset" onclick="hideinput()">Cancel</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=us.getName()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=us.getEmail()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary"><%=us.getMobile()%></div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">Null</div>
                                </div>
                                <hr>
                            </div>
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
                $('#updateok').on("submit",function(event)
        {
            event.preventDefault();
            console.log("button clicked")
            let form=new FormData(this);
            $.ajax({
                url:"updateprofilepic",
                method:"post",
                data:form,
                success:function(data,textStatus,jqXHR)
                {
                    console.log(data);
                    if(data.trim()=="done")
                    {
                        swal("Good job!", "Updated successfully", "success");
                        document.getElementById("inputFormRow").style.display = "none";
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
