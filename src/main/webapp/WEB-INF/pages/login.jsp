<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>login page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
  
  <style>
body {
  background-image: url('https://gadnr.org/sites/default/files/parks/images/zoom/1920x1080-BlackRockMountain.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
  
  
  
</head>
<body>

<div class="container">
 
           <div style="text-align: center;">
 
 <h2>Login</h2> <br>
  
  <img alt="login image" src="https://cdn-icons-png.flaticon.com/512/6681/6681204.png"  style="height:60px"> <br>
  
          </div>
 
         <div style="text-align: center;">
  
  <h6 style="color:red; font-family:Monospace;"> ${message}  </h6><p> <p>
  
         </div>
 
  <form action="loginValidate" method="post" style="text-align: center;" >
    <div class="form-group">
      <label for="emailId">Email Id:</label>
      <input type="text" class="form-control"  placeholder="Enter Email Id" name="emailId">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password"> 
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="reset" class="btn btn-warning">Reset</button>
    <a href="register"><button type="button" class="btn btn-success">SignUp</button></a>
  </form>
</div>




</body>
</html>