
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/285aa4f22d.js" crossorigin="anonymous"></script>
  <link href="css/index.css" rel="stylesheet" type="text/css"/>
  
  <!-- BEGIN Pre-requisites -->
  <script src="https://apis.google.com/js/client:platform.js?onload=start" async defer>
  </script>
  <!-- END Pre-requisites -->
  
  <script>
    function start() {
      gapi.load('auth2', function() {
        auth2 = gapi.auth2.init({
          client_id: 'YOUR_CLIENT_ID.apps.googleusercontent.com',
          // Scopes to request in addition to 'profile' and 'email'
          //scope: 'additional_scope'
        });
      });
    }
  </script>
  
  <style>
      .banner-home
{
    clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 95%, 70% 88%, 43% 100%, 20% 94%, 0 98%);
}
  </style>
        <title>Login</title>
    </head>
    <body>
        <%@include file="home_navbar.jsp" %>
        <div class="container-fluid" style="background-image:url('img/home-2.jpg'); background-size: cover;background-position: center;background-repeat: no-repeat;">
            <div class="row justify-content-center">
                <div class="col-lg-8 mt-2 bg-dark">
                    <h1 class="text-center text-white">Login Menu</h1>
                    <hr class="bg-white">
                    <div class="row justify-content-center">
                        <div class="col-md-5 bg-dark text-white m-3">
                            <form action="Login_User" method="post" id="login_user">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput1" class="form-label">UserID</label>
                                    <input type="text" class="form-control" placeholder="Enter here" name="userid">
                                </div>
                                <div class="mb-3">
                                    <label for="inputPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" name="u_password">
                                </div>
                                <div class="mb-3">
                                    <input class="" type="checkbox" value="Checked" id="flexCheckIndeterminate">
                                    <label class="text-white" for="flexCheckIndeterminate">Remember me ?</label>
                                </div>
                                <div class="row justify-content-center mb-3">
                                    <button type="reset" class="btn btn-outline-danger col-md-4 m-3">Reset</button>
                                    <button type="submit"class="btn btn-outline-success col-md-4 m-3">Login</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-1 justify-content-center">
                            <div class="text-center text-white">|<br>|<br>|<br>|<br>|<br>|<br>OR<br>|<br>|<br>|<br>|<br>|<br>|<br></div>
                        </div>
                        <div class="col-md m-5">
                            <a href="#" class="btn btn-outline-primary">
                                <span class="fab fa-facebook-square"></span> Login with Facebook
                            </a>
                            <a href="#" class="btn btn-outline-primary mt-1">
                                <span class="fa fa-twitter fa-fw"></span> Login with Twitter
                            </a>
                            <a href="#" id="signinButton" class="btn btn-outline-danger mt-1">
                                <span class="fa fa-google fa-fw"></span> Login with Google+
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="home_footer.jsp" %>
    </body>
    <script>
        $('#signinButton').click(function()
        {
            auth2.grantOfflineAccess().then(signInCallback);
        });
    </script>
    <script>
function signInCallback(authResult) {
  if (authResult['code']) {

    // Hide the sign-in button now that the user is authorized, for example:
    $('#signinButton').attr('style', 'display: none');

    // Send the code to the server
    $.ajax({
      type: 'POST',
      url: 'http://example.com/storeauthcode',
      // Always include an `X-Requested-With` header in every AJAX request,
      // to protect against CSRF attacks.
      headers: {
        'X-Requested-With': 'XMLHttpRequest'
      },
      contentType: 'application/octet-stream; charset=utf-8',
      success: function(result) {
        // Handle or verify the server response.
      },
      processData: false,
      data: authResult['code']
    });
  } else {
    // There was an error.
  }
}
</script>        
            
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function(e)
        {
            
            $("").on("submit",function(event)
            {
                event.preventDefault();
                console.log("Button clicked")
                let form=new FormData(this);
                $.ajax({
                    url:"Register_User",
                    type:'POST',
                    data:form,
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
                    processData:false,
                    contentType:false,
                })
            })
        });
    </script>
</html>
