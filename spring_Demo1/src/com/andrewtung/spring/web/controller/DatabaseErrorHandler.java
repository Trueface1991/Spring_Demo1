package com.andrewtung.spring.web.controller;

import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

@ControllerAdvice
public class DatabaseErrorHandler {

	@ExceptionHandler(DataAccessException.class)
	public String handleDatabaseException(DataAccessException ex) {
		return "error";
	}
	
	@ExceptionHandler(MethodArgumentTypeMismatchException.class)
	public String handleIdException(MethodArgumentTypeMismatchException ex) {
		return "iderror";
	}
	
}
