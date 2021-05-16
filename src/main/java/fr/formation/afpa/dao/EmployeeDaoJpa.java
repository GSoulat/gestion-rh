package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Employee;

@Repository
public class EmployeeDaoJpa implements IEmployeeDaoJpa{
	private static final Log log = LogFactory.getLog(EmployeeDaoJpa.class);
	
	@PersistenceContext
	private EntityManager em;
	
	public EmployeeDaoJpa() {
		System.out.println("message test dao");

	}
	
	@Override
	public Employee findById(Integer id) {
		return em.find(Employee.class, id);
	}

	@Override
	public List<Employee> findAll() {
		return em.createQuery("select emp from Employee emp").getResultList();
	}
	
	public List<Employee> findManager() {
		return em.createQuery("select distinct manager from Employee").getResultList();
	}
	
	@Override
	public Integer save(Employee e) {
		em.persist(e);
		return e.getEmpId();
	}

	@Override
	public Employee update(Employee e) {
		return em.merge(e);
	}

	@Override
	public void delete(Employee e) {
		em.remove(e);
	}

	@Override
	public void deleteById(Integer id) {
		Employee emp= findById(id);
		delete(emp);
	}
	
	@Override
	public List<Employee> findSansManager() {
	return em.createQuery("select emp from Employee emp where manager is null").getResultList();
	}

	@Override
    public List<Employee> findequipe(Integer id){
        return em.createQuery("select emp from Employee emp where manager is " + id).getResultList();
    }


}
