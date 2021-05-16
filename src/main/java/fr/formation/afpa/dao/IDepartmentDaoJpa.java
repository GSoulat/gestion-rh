package fr.formation.afpa.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Department;


public interface IDepartmentDaoJpa {

	//Read
	Department findById(Integer id);
	List<Department> findAll();
	
//	Create
	Integer save(Department e);
	
//	Update
	Department update(Department e);
	
	//Delete
	void delete(Department e);
	void deleteById(Integer id);
	
}
