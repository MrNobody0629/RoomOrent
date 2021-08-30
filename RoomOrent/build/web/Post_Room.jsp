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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
  <link href="css/index.css" rel="stylesheet" type="text/css"/>
  <link href="css/profile.css" rel="stylesheet" type="text/css"/>
  <style>
      .banner-home
{
    clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 95%, 70% 88%, 43% 100%, 20% 94%, 0 98%);
}
  </style>
</head>
<body style="background-color: activeborder;">
<!--navbar start-->
<%@include file="profile_navbar.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 offset-3 bg-dark mt-1 p-5 text-white">
            <h1 class="">Enter a room details</h1>
            <form id="add_room_post" action="Add_Room" method="POST">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Addresline-1</label>
                    <input type="text" class="form-control" placeholder="addressline-1" name="addressline_1">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Addresline-2</label>
                    <input type="text" class="form-control" placeholder="addressline-2" name="addressline_2">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">State</label>
                    <input type="text" class="form-control" placeholder="state" name="state">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">District</label>
                    <input type="text" class="form-control" placeholder="District" name="district">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Pincode</label>
                    <input type="number" class="form-control" placeholder="pincode" name="pincode">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Room Dimention</label>
                    <div>
                        <Select type="email" class="" name="dimension-w">
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                        </select> X 
                        <Select type="email" class="" name="dimension-h">
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Attached Bathroom</label>
                    <div>
                        <input type="radio" name="bathroom" value="Yes"> Yes
                        <input type="radio" name="bathroom" value="No"> No
                    </div>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Fan</label>
                    <div>
                        <input type="radio" name="fan" value="Yes"> Yes
                        <input type="radio" name="fan" value="No"> No
                    </div>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Bed</label>
                    <div>
                        <input type="radio" name="bed" value="Single"> Single
                        <input type="radio" name="bed" value="Double"> Double
                        <input type="radio" name="bed" value="No"> No
                    </div>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Rent Demand</label>
                    <input type="number" class="form-control" name="rentdemand">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Add Image</label>
                    <input type="file" class="form-control" name="image_1">
                </div>
                <div class="row">
                <button class="btn btn-outline-danger col-sm-6" type="reset">Reset</button>
                <button class="btn btn-outline-success col-sm-6" type="submit">Upload</button>
            </div>
            </form>
        </div>
    </div>
</div>
<%@include file="home_footer.jsp" %>
</body>
<script>
    $(document).ready(
            $("#add_room_post").on("submit",function(event){
                event.preventDefault();
                console.log("button clicked");
                let form=new FormData(this);
                $.ajax({
                    url:"Add_Room",
                    type:"POST",
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
            }));
</script>
</html>

