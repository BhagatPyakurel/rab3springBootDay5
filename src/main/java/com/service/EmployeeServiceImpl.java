package com.service;
import java.util.Optional;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.dao.EmployeeRepository;
import com.entity.EmployeeEntity;

@Service

public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeRepository employeeRepository;

	@Override
	public void registerEmp(EmployeeEntity employeeEntity) {
		
		employeeRepository.save(employeeEntity);
	}

	@Override
	public EmployeeEntity authenticate(String emailId, String password) {
		
		EmployeeEntity employeeEntity=employeeRepository.findByEmailIdAndPassword(emailId,password);
		
		
		
		return employeeEntity;
	}

	@Override
	public List<EmployeeEntity> findAllEmployees() {
		
List<EmployeeEntity> employeeEntity=employeeRepository.findAll();
		
		List<EmployeeEntity> employeeEntityList=new ArrayList<>();
		
		if(employeeEntity.size() >0) {
			
			
		
		for(EmployeeEntity tempa:employeeEntity) {
			
			EmployeeEntity employee=new EmployeeEntity();
			
			BeanUtils.copyProperties(tempa, employee);
			employeeEntityList.add(employee);
			
		}
		}
		return employeeEntityList;
		
	}

	@Override
	public void deleteEmployee(int employeeId) {
		
		
		Optional<EmployeeEntity> optional=employeeRepository.findById(employeeId);
		if(optional.isEmpty()) {
			
			System.out.println("Record does not exist");
		}else {
			
			System.out.println(optional.get());
			
		}
		
		
		employeeRepository.deleteById(employeeId);
		
	}

	@Override
	public void updateEmp(int employeeId) {

		Optional<EmployeeEntity> optional=employeeRepository.findById(employeeId);
		if(optional.isEmpty()) {
			
			System.out.println("Record does not exist");
		}else {
			
			System.out.println(optional.get());
			
		}
		
		
		employeeRepository.deleteById(employeeId);
	}
	
	

	@Override
	public EmployeeEntity findParticularEmployee(int employeeId) {
		
		Optional<EmployeeEntity> optional=employeeRepository.findById(employeeId);
		
		if(optional.isEmpty()) {
			return null;
		}
		
		return optional.get();
	}

	@Override
	public void deleteEmployeeById(int employeeId) {
		employeeRepository.deleteById(employeeId);
		
	}

	
	
	
	

	

}
