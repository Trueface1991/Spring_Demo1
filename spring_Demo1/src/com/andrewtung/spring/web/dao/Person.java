package com.andrewtung.spring.web.dao;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.andrewtung.spring.web.validation.ValidEmail;

public class Person {
	
	@NotNull
	public int id;
	
	@Size(min=5, max=100, message="Name need be between 5 and 100 character.")
	private String name;
	
	@NotNull
	//@Pattern(regexp = ".*\\@.*\\..*", message="This does not appear to be a valid email address.")
	@ValidEmail(min=5, message="This email is not valid.")
	private String email;
	
	private int salary;
	
	@Size(min=1, max=100, message="City is required.")
	private String city;
	
	@Size(min=10, max=100, message="Text need be between 10 and 100 character.")
	private String text;

	
	public Person() {
	}

	public Person(String name, String email, int salary, String city, String text) {
		this.name = name;
		this.email = email;
		this.salary = salary;
		this.city = city;
		this.text = text;
	}

	public Person(int id, String name, String email, int salary, String city, String text) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.salary = salary;
		this.city = city;
		this.text = text;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
