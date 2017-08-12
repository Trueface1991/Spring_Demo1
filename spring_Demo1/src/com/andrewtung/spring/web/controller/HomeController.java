package com.andrewtung.spring.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.andrewtung.spring.web.dao.Person;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {
		return "homepage";
	}

	@RequestMapping("/createperson")
	public String createPerson(Model model) {

		model.addAttribute("person", new Person());
		return "createperson";
	}
	
	@RequestMapping("/search")
	public String queryPeople() {
		return "search";
	}
	
	@RequestMapping("/updateperson")
	public String updatePerson(Model model) {
		
		model.addAttribute("person", new Person());
		return "updateperson";
	}
	
	
}
