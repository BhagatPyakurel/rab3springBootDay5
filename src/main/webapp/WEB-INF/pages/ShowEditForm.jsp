<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit From</title>

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
 
 <h2>Registration Form</h2> <br>
  
  <img alt="" src="https://i.pinimg.com/originals/53/c9/28/53c92803ebd4c6fe0f908c6878c1e1da.png"  style="height:60px"> <br>
  
          </div>
 
         <div style="text-align: center;">
  
  <h5 style="color:Green"> ${message}  </h5><p> <p>
  
         </div>
 
  <form action="updateEmployee" method="post" >
   
  
    <div class="form-group">
      <label for="empId">EmployeeID:</label>
      <input type="text" class="form-control"  placeholder="Enter employee ID" name="employeeId">
    </div>
    
    <div class="form-group">
      <label for="pwd">Employee Name:</label>
      <input type="text" class="form-control" placeholder="Enter employee name" name="employeeName"> 
    </div>
    
    <div class="form-group">
      <label for="salary">Salary:</label>
      <input type="text" class="form-control"  placeholder="Enter salary" name="salary">
    </div>
    
    <div class="form-group">
      <label for="email">Email ID:</label>
      <input type="text" class="form-control" placeholder="Enter email" name="emailId"> 
    </div>
    
    
   <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password"> 
    </div>
    
    
    
    
    
    
    <button type="submit" class="btn btn-primary">Update</button>
   
  </form>
</div>

 
  
   


</body>
</html>