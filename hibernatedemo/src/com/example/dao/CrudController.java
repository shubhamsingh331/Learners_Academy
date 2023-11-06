package com.example.dao;

import org.hibernate.Session;

import com.example.pojo.Employee;

public class CrudController {
	
	public String insert(Session session, Employee e) {
		int row = (int) session.save(e);
		
		if (row>0) {
			return "Insertion Successful";
		}else {
			return "Insertion Failed";
		}
	}
	
	public String update(Session session, Employee e) {
		session.saveOrUpdate(e);
		return "updated";
	}
	
	public String delete(Session session, Employee e) {
		session.delete(e);
		return "Deleted";
	}
	
	public Employee retrieve(Session session, int id) {
		return session.get(Employee.class, id);
	}
}
