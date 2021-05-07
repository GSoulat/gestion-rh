package fr.formation.afpa.dao;

import java.util.List;

import fr.formation.afpa.domain.Departement;

public interface IDepartementDaoJpa {

	//Read
	Departement findById(Integer id);
	List<Departement> finAll();
	
//	Create
	Integer save(Departement e);
	
//	Update
	Departement Update(Departement e);
	
	//Delete
	void delete(Departement e);
	void deleteById(Integer id);
	
	
	
	
	
	
}
