<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Records</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<style>
body {
  
  background-image: url('https://img.freepik.com/free-photo/vintage-textured-watercolor-paper-background_53876-103939.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>



<body style="display: flex; align-items: center;  justify-content: center; font-family: sans-serif; line-height: 1.5; min-height: 100vh;   background: #f3f3f3; 
    flex-direction: column; margin: 0; "> 
<div style=" background-color: #fff; 
    border-radius: 15px; 
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); 
    padding: 10px 20px; 
    transition: transform 0.2s; 
    width: 800px; 
    text-align: center; ">
  <h3>All Records</h3>        
  <p>
  
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Employee ID</th>
    <th>Employee Name</th>
    <th>Salary</th>
    <th>Email ID</th>
    <th>Password</th>
  </tr>
    
     
    </thead>
    <tbody>
      <tbody>
      <c:forEach items="${employeeEntityList}" var="tempoVar">
          <tr bgcolor="pink">
               <td> ${tempoVar.employeeId}</td>
               <td>${tempoVar.employeeName} </td>
			   <td>${tempoVar.salary} </td>
			   <td>${tempoVar.emailId} </td>
			   <td>${tempoVar.password}</td>
			   <td><a href="deleteEmployee?employeeId=${tempoVar.employeeId}">
				       <button type="button" class="btn btn-danger">
				           <img src="https://cdn4.iconfinder.com/data/icons/linecon/512/delete-512.png" alt="delete imagages" style="height:30px;width:30px">
				       </button>
				     </a>
				  </td>
				  <td>
				       <a href="updateEmployee?employeeId=${tempoVar.employeeId}">
				         <button type="button" class="btn btn-danger">
				           <img src="data:image/png;base64,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" alt="Edit imagages" style="height:30px;width:30px">
				         </button>
				         </a>
				 </td>
			   
			   </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
<div style="display: block;">
                       
                   
                   
                    </div>
</body>
</html>