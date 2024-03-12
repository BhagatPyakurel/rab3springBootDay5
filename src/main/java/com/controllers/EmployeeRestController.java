package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.entity.EmployeeEntity;
import com.service.EmployeeService;

@RestController

@RequestMapping("A1")

public class EmployeeRestController {
	
	@Autowired
	EmployeeService employeeService;
	
	
	
	//Fetch all employee
	
	@GetMapping("/employees")
	List<EmployeeEntity>fetchAllEmployees(){
		
		List<EmployeeEntity> listOfEmployees=employeeService.findAllEmployees();
		return listOfEmployees;
		
	}
	
	//insert 
	
	@PostMapping("/employees")
	public String registerEmployee(@RequestBody EmployeeEntity employeeEntity) {
		
		employeeService.registerEmp(employeeEntity);
		//model.addAttribute("message", "Record inserted successfully");
		
		return"Record inserted successfully";

	}
	
	//Finding one employee by Id
	
	@GetMapping("/employees/{employeeId}")
	ResponseEntity<?>findEmployees(@PathVariable int employeeId){
		
		EmployeeEntity employee=employeeService.findParticularEmployee(employeeId);
        if(employee !=null) {
			return new ResponseEntity<>(employee,HttpStatus.OK);
		}else {
			return new ResponseEntity<>("employee id not found",HttpStatus.NOT_FOUND);
			
		}
	}
	
	//Delete

	@DeleteMapping(value = "/employees/{employeeId}")
	public ResponseEntity<String> deleteEmployeeById(@PathVariable("employeeId") int employeeId) {
		employeeService.deleteEmployeeById(employeeId);
		
		return ResponseEntity.ok().body("The employee with id " + employeeId +  "id deleted successfully!");
	}
	
	
	
	
	
	
	
	
	
	//Update or edit
	
	
	@PutMapping("/employees")
	
	ResponseEntity<String>updateEmployee(@RequestBody EmployeeEntity employeeEntity){
	int	emplId=employeeEntity.getEmployeeId();
	
	
	
	
	EmployeeEntity emp=employeeService.findParticularEmployee(emplId);
	if (emp !=null) {
employeeService.registerEmp(employeeEntity);
		
		return new ResponseEntity<>("Updated Successfully",HttpStatus.OK);
		
	}else {
		return new ResponseEntity<>("Updated not found",HttpStatus.NOT_FOUND);
		
	}
	
	}
	
	
	
	
	
	
	
	
}






	

