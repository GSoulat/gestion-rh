package fr.formation.afpa.controller;

import java.security.Provider.Service;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.IEmployeeService;

@Controller
public class employeecontroller {

//	EmployeeService service =new EmployeeService();
	@Autowired
	@Qualifier("employeeService")
	IEmployeeService employeeService;

	@InitBinder
	public final void initBinder(final WebDataBinder binder, final Locale locale) {
		final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	public employeecontroller() {
	}

	@GetMapping("/listmanager")
	public String listmanager(Model model) {
		List<Employee> listM = employeeService.findManager();
		System.out.println("*********************************listManager********************************************");
		System.out.println(listM);
		model.addAttribute("listmanager", listM);
//		System.out.println("*********************************listEquipe********************************************");
		List<List<Employee>> listDeList = new ArrayList<List<Employee>>();
		List<Employee> equipeList = new ArrayList<Employee>();

		for (Employee employee : listM) {
			equipeList = employeeService.findequipe(employee.getEmpId());
			System.out
					.println("*********************************listEquipe********************************************");
			System.out.println(equipeList.toString());
			listDeList.add(equipeList);
		}

		model.addAttribute("listDeList", listDeList);
		return "listmanager";
	}

	@GetMapping(path = "/hello")
	public String hello() {
		return "index";
	}

	@GetMapping("/")
	public String example(Model model) {
		return "index";
	}

	@GetMapping("/Deconnexion")
	public String deco(Model model) {
		return "index";
	}

	@GetMapping("/accueil")
	public String accueil(Model model) {
		return "accueil";
	}

	@GetMapping(path = "/helloaccueil")
	public String helloa() {
		return "accueil";
	}

	@GetMapping("/ajouteremployer")
	public String ajouteremployer(Model model, @ModelAttribute Employee employee) {
		List<Employee> listM = employeeService.findManager();
		model.addAttribute("listmanager", listM);
		return "ajouteremployer";
	}

	@PostMapping(path = "/updatesave")
	public String updateEmployee(@ModelAttribute("employee") Employee employee, BindingResult result, ModelMap model,
			@RequestParam(value = "manager", required = false) Integer manager) {
		Employee newManager = employeeService.findById(manager);
		System.err.println("------> " + manager);
		employee.setFirstName(employee.getFirstName());
		employee.setLastName(employee.getLastName());
		employee.setStartDate(employee.getStartDate());
		employee.setTitle(employee.getTitle());
		employee.setManager(newManager);
		employeeService.update(employee);
		model.put("employee", employeeService.findAll());
		return "redirect:/listemployer";
	}

	@PostMapping(path = "/save")
	public String saveEmployee(@Valid @ModelAttribute("employee") Employee employee, BindingResult result,
			ModelMap model, @RequestParam(value = "manager", required = false) Integer manager) {
		System.err.println("------> " + manager);
		if (result.hasErrors()) {
			return "ajouteremployer";
		}

		Employee newEmp = new Employee();
		Employee newManager = employeeService.findById(manager);
		newEmp.setFirstName(employee.getFirstName());
		newEmp.setLastName(employee.getLastName());
		newEmp.setStartDate(employee.getStartDate());
		newEmp.setTitle(employee.getTitle());
		newEmp.setManager(newManager);
		employeeService.save(newEmp);

		model.put("employee", employeeService.findAll());
		return "redirect:/listemployer";
	}

	@GetMapping("/ajoutermanager")
	public String ajoutermanager(Model model) {

		return "ajoutermanager";
	}

	@GetMapping("/contact")
	public String contact(Model model) {
		return "contact";
	}

	@GetMapping("/listemployer")
	public String listemployer(Model model) {
		List<Employee> list = employeeService.findAll();
		System.out.println("*********************************listemployee********************************************");
		System.out.println(list);
		model.addAttribute("listemployer", list);
		return "listemployer";
	}

	@GetMapping("/parametre")
	public String parametre(Model model) {
		List<Employee> listM = employeeService.findManager();
		model.addAttribute("listmanager", listM);
		List<Employee> listE = employeeService.findSansManager();
		model.addAttribute("listemployer", listE);
		return "parametre";
	}

	@GetMapping("/qui")
	public String qui(Model model) {
		return "qui";
	}

	@GetMapping(path = "/update")
	public ModelAndView update(@RequestParam(name = "empId") Integer empId, Model model) {
		ModelAndView mav = new ModelAndView("modifieremployer");
		Employee mavemployee = employeeService.findById(empId);
		List<Employee> listM = employeeService.findManager();
		model.addAttribute("listmanager", listM);
		mav.addObject("employee", mavemployee);
//		    mav.addObject("manager", mavmanager);
		return mav;
	}

	@GetMapping(path = "/delete")
	public String delete(@ModelAttribute("employee") Employee employee, Model model,
			@RequestParam(name = "empId") Integer empId) {
		employeeService.deleteById(empId);
		return "redirect:/listemployer";
	}

//	@GetMapping(path = "/reupdate")
//    public String reupdate(Model model) {
//		List<Employee> listM = employeeService.findSansManager();
//		model.addAttribute("listmanager", listM);
//		if 
//		    return mav;
//    }
}
