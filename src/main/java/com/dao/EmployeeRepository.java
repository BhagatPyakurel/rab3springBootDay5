package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.EmployeeEntity;

@Repository

public interface EmployeeRepository extends JpaRepository<EmployeeEntity, Integer>{

	EmployeeEntity findByEmailIdAndPassword(String emailId, String password);

	

	

	

	
	
	


	
	
	
	
	

}
