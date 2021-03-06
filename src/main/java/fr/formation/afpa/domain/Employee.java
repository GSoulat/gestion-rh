package fr.formation.afpa.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "emp_id",unique = true,nullable = false)
	private Integer empId;
	
	@ManyToOne
	@JoinColumn(name="superior_emp_id")
	private Employee manager;
	
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "manager",  cascade = CascadeType.ALL)
	private Set<Employee> employees = new HashSet<Employee>();
	
	@Column(name= "first_name", nullable = false, length = 30)
//	@NotEmpty(message = "Merci de saisir votre prénom")
	private String firstName;
	
	@Column(name= "last_name", nullable = false, length = 30)
//	@NotEmpty(message = "Merci de saisir votre nom")
	private String lastName;
	
	@Temporal(TemporalType.DATE)
	@Column(name= "start_date", nullable = false)
//	@NotEmpty(message = "Merci de saisir votre date d'embauche")
	private Date startDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name= "end_date")
	private Date endDate;

	@Column
//	@NotEmpty(message = "Merci de saisir votre titre")
	private String title;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="DEPT_ID" )
	private Department department;
	
	public Employee() {
	}

//	public Employee(String firstName, String lastName, Date startDate, Date endDate, String title) {
//		super();
//		this.firstName = firstName;
//		this.lastName = lastName;
//		this.startDate = startDate;
//		this.endDate = endDate;
//		this.title = title;
//	}

	public Employee(String firstName, String lastName, Date startDate, Date endDate, String title, Employee manager ) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.title = title;
		this.manager = manager;
	}

	public Department getDepartment() {
		return department;
	}


	public void setDepartment(Department departement) {
		this.department = departement;
	}


	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Employee getManager() {
		return manager;
	}


	public void setManager(Employee manager) {
		this.manager = manager;
	}


	public Set<Employee> getEmployees() {
		return employees;
	}


	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}

	@Override
	public String toString() {
		return firstName + " " + lastName;
	}

	


	


	
	
	
}
