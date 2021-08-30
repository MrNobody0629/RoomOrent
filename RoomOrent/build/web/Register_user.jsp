
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/285aa4f22d.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link href="css/profile.css" rel="stylesheet" type="text/css"/>
        <title>Register</title>
    </head>
    <body>
        <%@include file="home_navbar.jsp" %>
        <div class="container-fluid" style="background-image: url('img/home-1.jpg'); background-position: center; background-repeat: no-repeat;background-size: cover;">
            <div class="row justify-content-center">
                <div class="col-lg-4 bg-dark mt-4 text-white">
                    <h2 class="text-center">Register</h2>
                    <hr class="bg-white">
                    <form id="register_user_new" action="Register_User" method="post">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Full Name</label>
                            <input type="text" class="form-control" placeholder="Enter here" name="uname" id="uname">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Email address</label>
                            <input type="email" class="form-control" placeholder="name@example.com" name="uemail" id="uemail">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Mobile Number</label>
                            <input type="number" maxlength="10" class="form-control" placeholder="Without Country code" name="unumber" id="unumber">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Gender</label>
                            <div class="p-1">
                                <input type="radio" name="ugender" id="ugender" value="Male">Male
                                <input type="radio" name="ugender" id="ugender" value="Female">Female
                                <input type="radio" name="ugender" id="ugender" value="Others">Others
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="inputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="upassword" name="upassword">
                        </div>
                        <div class="mb-3">
                            <input class="" type="checkbox" id="ucondition" required>
                            <label class="text-white">Terms & Conditions ?</label>
                        </div>
                        <div class="row justify-content-center mt-0 mb-3">
                            <button type="reset" class="btn btn-outline-danger col-md-5 m-3">Reset</button>
                            <button type="submit"class="btn btn-outline-success col-md-5 m-3">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="home_footer.jsp" %>
    </body>
    <script>
    $(document).ready(
            $("#register_user_new").on("submit",function(event){
                event.preventDefault();
                let formm={
                    name:document.getElementById("uname").value,
                    email:document.getElementById("uemail").value,
                    number:document.getElementById("unumber").value,
                    gender:document.getElementById("ugender").value,
                    password:document.getElementById("upassword").value,
                    condition:document.getElementById("ucondition").value,
                };
                $.ajax({
                    url:"Register_User",
                    type:"POST",
                    data:formm,
                    cache:false,
                    success:function(data,textStatus,jqXHR)
                    {
                        if(data.trim()=="done")
                        {
                            swal("Good job!", "Saved successfully", "success");
                        }
                        else
                        {
                            swal("Error!!", "Something went wrong", "error");
                        }
                    },
                    error:function(jqXHR,textStatus,errorThrown)
                    {
                        swal("Error!!", "Something went wrong", "error");
                    },
                })
            }));
    </script>
</html>
