package fr.formation.afpa.dao;

import java.util.List;

import fr.formation.afpa.domain.Employee;

public interface IEmployeeDaoJpa {

	//Read
	Employee findById(Integer id);
	List<Employee> finAll();
	
//	Create
	Integer save(Employee e);
	
//	Update
	Employee Update(Employee e);
	
	//Delete
	void delete(Employee e);
	void deleteById(Integer id);
	
	
	
	
	
	
}
