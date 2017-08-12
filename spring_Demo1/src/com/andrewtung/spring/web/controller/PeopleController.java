package com.andrewtung.spring.web.controller;

import java.util.List;

import javax.validation.Valid;
import javax.xml.crypto.Data;

import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.andrewtung.spring.web.dao.Person;
import com.andrewtung.spring.web.service.PeopleService;

@Controller
public class PeopleController {

	private PeopleService peopleService;

	@Autowired
	public void setPeopleService(PeopleService peopleService) {
		this.peopleService = peopleService;
	}

	@RequestMapping(value = "/allpeople", method = RequestMethod.GET)
	public String showPeople(Model model) {

		List<Person> people = peopleService.getCurrentPeople();

		model.addAttribute("people", people);

		return "allpeople";
	}

	@RequestMapping(value = "/dosearchbyid", method = RequestMethod.GET)
	public String showPerson(Model model, @Valid @RequestParam("id") int id) {

		Person person = peopleService.getPerson(id);
		model.addAttribute("person", person);
		return "personsearchedbyid";
	}

	@RequestMapping(value = "/dosearch", method = RequestMethod.GET)
	public String showSearchedPeople(Model model, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("city") String city,
			@RequestParam("salarymin") Integer salarymin, @RequestParam("salarymax") Integer salarymax) {
		
		if (salarymin == null || salarymax == null ) {
			List<Person> people = peopleService.getPeopleWithoutSalary(name, email, city);
			model.addAttribute("people", people);

			return "searchedpeople";
		}
		
		List<Person> people = peopleService.getPeoplewithParams(name, email, city, salarymin, salarymax);
		model.addAttribute("people", people);

		return "searchedpeople";
		
		

	}

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String createPeople(Model model, @Valid Person person, BindingResult resuslt) {

		if (resuslt.hasErrors()) {

			return "createperson";
		}

		peopleService.create(person);

		return "personcreated";
	}

	@RequestMapping(value = "/dosearchfordeletion", method = RequestMethod.GET)
	public String showPeopleforDeletion(Model model) {

		List<Person> people = peopleService.getCurrentPeople();

		model.addAttribute("people", people);

		return "deletpeople";
	}

	@RequestMapping(value = "/deletepeople", method = RequestMethod.POST)
	public String deletePerson(Model model, @RequestParam("id") Integer id) {

		peopleService.deletePerson(id);

		return "persondeleted";

	}

	@RequestMapping(value = "/doupdate", method = RequestMethod.POST)
	public String updatePerson(Model model, @Valid Person person, BindingResult resuslt) {

		if (resuslt.hasErrors()) {

			return "updateperson";
		}

		peopleService.update(person);

		return "personupdated";
	}
}
