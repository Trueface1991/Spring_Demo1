package com.andrewtung.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andrewtung.spring.web.dao.Person;
import com.andrewtung.spring.web.dao.demoDao;

@Service("peopleService")
public class PeopleService {
	private demoDao demoDao;

	@Autowired
	public void setDemoDao(demoDao demoDao) {
		this.demoDao = demoDao;
	}

	public List<Person> getCurrentPeople() {
		return demoDao.getPeople();
	}

	public Person getPerson(int id) {
		return demoDao.getPerson(id);
	}

	public void create(Person person) {
		demoDao.createPerson(person);
	}

	public int[] createBatch(List<Person> people) {
		return demoDao.createBatchPerson(people);
	}

	public void update(Person person) {
		demoDao.updatePerson(person);
	}

	public void deletePerson(int id) {
		demoDao.deletePerson(id);
	}

	public List<Person> getPeoplewithParams(String name, String email, String city, Integer salarymin, Integer salarymax) {

		return demoDao.getPeoplewithParams(name, email, city, salarymin, salarymax);
	}

	public List<Person> getPeopleWithoutSalary(String name, String email, String city){
		return demoDao.getPeopleWithoutSalary(name, email, city);
	}
	

}
