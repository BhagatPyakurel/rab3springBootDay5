<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <title> Congratulations Page </title>
</head>

<style>
body {
  background-image: url('https://img.freepik.com/free-photo/vintage-textured-watercolor-paper-background_53876-103939.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>



<body style="background-color:#f3f3f3;">
 <!-- Congratulations area start -->
    <div class="congratulation-area text-center mt-5">
        <div class="container">
            <div class="congratulation-wrapper">
                <div class="congratulation-contents center-text">
                    <div class="congratulation-contents-icon">
                        <i class="fas fa-check"></i>
                    </div>
                    <h5 class="congratulation-contents-title"> Congratulations! </h5>
                    <p class="congratulation-contents-para"style="font-family:cursive; color:red">You are a valid user!! </p>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Congratulations area end -->


<h3>${message}</h3>


 <marquee><h3 style="font-family:cursive;">Hey.. ${employeeDTO.employeeName}!! Congratulations.. You have successfully logged-in. </h3></marquee>

<table class="center"style="width:70%;">
  <tr style="background-color:lightgrey">
    <th>Employee ID</th>
    <th>Employee Name</th>
    <th>Salary</th>
    <th>Email ID</th>
    <th>Password</th>
  </tr>
  <tr  style= "background-color: rgba(150, 212, 212, 0.4);">
   <td>${employeeDTO.employeeId} </td>
   <td>${employeeDTO.employeeName} </td>
   <td>${employeeDTO.salary} </td>
   <td>${employeeDTO.emailId} </td>
   <td>${employeeDTO.password}</td>
  </tr>
</table>

<br>
<div class="btn-wrapper mt-4">
                       
                     <br/><center><a href="fetchAll" class="cmn-btn btn-bg-1"> Fetch All Record </a></center>
                   
                    </div>
         
    <style>
    .congratulation-wrapper {
        max-width: 550px;
        margin-inline: auto;
        -webkit-box-shadow: 0 0 20px #f3f3f3;
        box-shadow: 0 0 20px #f3f3f3;
        padding: 30px 20px;
        background-color: #fff;
        border-radius: 10px;
    }

    .congratulation-contents.center-text .congratulation-contents-icon {
        margin-inline: auto;
    }
    .congratulation-contents-icon {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        height: 100px;
        width: 100px;
        background-color: #65c18c;
        color: #fff;
        font-size: 50px;
        border-radius: 50%;
        margin-bottom: 30px;
    }
    .congratulation-contents-title {
        font-size: 32px;
        line-height: 36px;
        margin: -6px 0 0;
    }
    .congratulation-contents-para {
        font-size: 16px;
        line-height: 24px;
        margin-top: 15px;
    }
    .btn-wrapper {
        display: block;
    }
    .cmn-btn.btn-bg-1 {
        background: slateblue;
        color: #fff;
        border: 2px solid transparent;
        border-radius:3px;
        text-decoration: none;
        padding:5px;
    }
 
th, td{
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</body>
</html>


