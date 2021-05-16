package fr.formation.afpa.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.afpa.dao.IEmployeeDaoJpa;
import fr.formation.afpa.domain.Employee;

@Service
@Transactional
public class EmployeeService implements IEmployeeService {

	@Autowired
	@Qualifier("employeeDaoJpa")
	private IEmployeeDaoJpa employeeDaoJpa;


	public IEmployeeDaoJpa getDao() {
		return employeeDaoJpa;
	}

	@Override
	public Employee findById(Integer id) {
		Employee emp = employeeDaoJpa.findById(id);
		return emp;
	}
	
	public Employee findsuperId(Integer id) {
		Employee emp = employeeDaoJpa.findById(id);
		return emp;
	}

	@Override
	public List<Employee> findAll() {
		List<Employee> list = new ArrayList<Employee>();
		System.out.println("findall - service");
		list = employeeDaoJpa.findAll();
		return list;
	}

	@Override
	public Employee save(Employee t) {
		employeeDaoJpa.save(t);
		return t;
	}

	@Override
	public Employee update(Employee t) {
		employeeDaoJpa.update(t);
		return t;
	}

	@Override
	public void delete(Employee t) {	
		employeeDaoJpa.delete(t);
	}

	@Override
	public void deleteById(Integer id) {
		delete(findById(id));
	}

	@Override
	public List<Employee> findManager() {
		List<Employee> list = new ArrayList<Employee>();
		System.out.println("findall - service");
		list = employeeDaoJpa.findManager();
		return list;
	}
	
	public List<Employee> findSansManager(){
		List<Employee> list = new ArrayList<Employee>();
		System.out.println("findall - service");
		list = employeeDaoJpa.findSansManager();
		return list;
	}
	
	public List<Employee> findequipe (Integer id){
	List<Employee> list = new ArrayList<Employee>();
	list = employeeDaoJpa.findequipe(id);
	return list;
	}
}