package com.service;

import java.util.List;

import com.entity.EmployeeEntity;

public interface EmployeeService {

	void registerEmp(EmployeeEntity employeeEntity);

	EmployeeEntity authenticate(String emailId, String password);

	List<EmployeeEntity> findAllEmployees();

	void deleteEmployee(int employeeId);

	void updateEmp(int employeeId);

	EmployeeEntity findParticularEmployee(int employeeId);

	void deleteEmployeeById(int employeeId);

	



	
	

	

	

	

}
