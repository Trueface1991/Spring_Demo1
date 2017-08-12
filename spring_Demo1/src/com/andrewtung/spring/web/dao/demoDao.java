package com.andrewtung.spring.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;

@Component("peopleDAO")
public class demoDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setJdbc(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	RowMapper<Person> rowMapper = new RowMapper<Person>() {

		public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
			Person person = new Person();
			person.setId(rs.getInt("id"));
			person.setName(rs.getString("name"));
			person.setEmail(rs.getString("email"));
			person.setCity(rs.getString("city"));
			person.setSalary(rs.getInt("salary"));
			person.setText(rs.getString("text"));
			return person;
		}
	};

	public List<Person> getPeople() {

		return jdbc.query("select * from demo1", rowMapper);
	}

	public Person getPerson(int id) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		return jdbc.queryForObject("select * from demo1 where id=:id", params, rowMapper);
	}

	public List<Person> getPeoplewithParams(String name, String email, String city, Integer salarymin, Integer salarymax) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("name", name + "%");
		params.addValue("email", "%" + email + "%");
		params.addValue("city", "%" + city + "%");
		params.addValue("salarymin", salarymin);
		params.addValue("salarymax", salarymax);

		return jdbc.query("select * from demo1 where name like :name and email like :email and city like :city and salary >= :salarymin and salary <= :salarymax", params,
				rowMapper);
	}
	
	public List<Person> getPeopleWithoutSalary(String name, String email, String city) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("name", name + "%");
		params.addValue("email", "%" + email + "%");
		params.addValue("city", "%" + city + "%");

		return jdbc.query("select * from demo1 where name like :name and email like :email and city like :city", params,
				rowMapper);
	}

	public Boolean createPerson(Person person) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(person);
		return jdbc.update(
				"insert into demo1 (name, email, city, salary, text) value (:name, :email, :city, :salary, :text)",
				params) == 1;
	}

	public int[] createBatchPerson(List<Person> people) {
		SqlParameterSource[] params = SqlParameterSourceUtils.createBatch(people.toArray());
		return jdbc.batchUpdate(
				"insert into demo1 (name, email, city, salary, text) value (:name, :email, :city, :salary, :text)",
				params);
	}

	public Boolean updatePerson(Person person) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(person);
		return jdbc.update("update demo1 set name=:name, email=:email, city=:city, salary=:salary, text=:text where id=:id",
				params) == 1;
	}

	public Boolean deletePerson(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		
		return jdbc.update("delete from demo1 where id=:id", params) == 1;
	}

}
