//package fr.formation.afpa.dao;
//
//import java.util.List;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//
//import org.apache.commons.logging.Log;
//import org.apache.commons.logging.LogFactory;
//
//import fr.formation.afpa.domain.Department;
//import fr.formation.afpa.domain.Employee;
//
//public class DepartmentDaoJpa implements IDepartmentDaoJpa{
//	private static final Log log = LogFactory.getLog(DepartmentDaoJpa.class);
//	
//	private static EntityManagerFactory emf;
//	private static EntityManager em;
//	
//	public DepartmentDaoJpa() {
//		emf = Persistence.createEntityManagerFactory("unitBD");
//		em = emf.createEntityManager();
//	}
//	
//	public void beginTransaction() {
//		em = emf.createEntityManager();
//		em.getTransaction().begin();
//	}
//	
//	public void commitTransaction() {
//		em.getTransaction().commit();
//		em.close();
//	}
//	
//	public void closeTransaction() {
//		em.close();
//	}
//	
//	
//	@Override
//	public Employee findById(Integer id) {
//		return em.find(Employee.class, id);
//	}
//
//	@Override
//	public List<Employee> findAll() {
//		return em.createQuery("select emp from Employee emp").getResultList();
//	}
//
//	@Override
//	public Integer save(Employee e) {
//		em.persist(e);
//		return e.getEmpId();
//	}
//
//	@Override
//	public Employee update(Employee e) {
//		return em.merge(e);
//	}
//
//	@Override
//	public void delete(Employee e) {
//		em.remove(e);
//	}
//
//	@Override
//	public void deleteById(Integer id) {
//		Employee emp= findById(id);
//		delete(emp);
//	}
//	
//	public List<Employee> finallmanager() {
//		return em.createQuery("select emp from Employee emp").getResultList();
//	}
//
//	@Override
//	public List<Employee> findManager() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public Department findById(Integer id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public Integer save(Department e) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public Department update(Department e) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public void delete(Department e) {
//		// TODO Auto-generated method stub
//		
//	}
//
//
//
//}
