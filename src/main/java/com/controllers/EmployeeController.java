package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.entity.EmployeeEntity;
import com.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService  employeeService;

	@GetMapping("/reg")
	String displayRegistrationPage(){
		
		return "registration";
	}
	
	
	
	@PostMapping("/registerEmp")
	public String registerEmployee(@ModelAttribute EmployeeEntity employeeEntity,Model model) {
		
		employeeService.registerEmp(employeeEntity);
		model.addAttribute("message", "Record inserted successfully");
		
		return"registration";

	}
	
@GetMapping("/")
	
	String displayLoginPage(){
		
		return "login";
	}
	
@PostMapping("/loginValidate")	
public String authenticateEmployee(@RequestParam String emailId,@RequestParam String password,Model model) {
	
	EmployeeEntity	employeeEntity=employeeService.authenticate(emailId,password);
	
	if(employeeEntity!=null) {
		model.addAttribute("employeeDTO", employeeEntity);
		return "congratulation";
	}else {
		model.addAttribute("message", "Wrong Credential!! Re-Try");
		return "login";
		
	}
}
	
	@GetMapping("/fetchAll")
	public String showAllEmployee(Model model) {
		List<EmployeeEntity> employeeEntityList=employeeService.findAllEmployees();
		model.addAttribute("employeeEntityList",employeeEntityList);
		System.out.println(employeeEntityList);//
		return "showAll";
	}
	
	
	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam int employeeId, Model model) {
		employeeService.deleteEmployee(employeeId);
		model.addAttribute("message", "Record deleted");
		//return "info";
		return "redirect:/fetchAll";
	}
	
	
	@GetMapping("/updateEmployee")
	public String updateEmployee(@RequestParam int employeeId, Model model) {
		employeeService.updateEmp(employeeId);
		
		model.addAttribute("employeeDTO","Record updated");
		return "updateEmployee";
	}
	
	
	
	
	
	
	
}






	

