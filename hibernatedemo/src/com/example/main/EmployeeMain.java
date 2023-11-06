package com.example.main;

import java.util.List;
import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.example.dao.CrudController;
import com.example.pojo.Employee;

public class EmployeeMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		Metadata md = new MetadataSources(ssr).getMetadataBuilder().build();
		
		SessionFactory sf = md.getSessionFactoryBuilder().build();
		
		Session session = sf.openSession();
		
		Transaction tran = session.beginTransaction();
		

		
		Scanner sc = new Scanner(System.in);
		
//		System.out.println("Enter the Employee id");
//		Employee e = new Employee();
//		
//		e.setEmpno(sc.nextInt());
		
//		System.out.println("Enter Employee Name");
//		e.setEmpname(sc.next());
//		
//		System.out.println("Enter Employee Email");
//		e.setEmail(sc.next());
		
		
//		CrudController crud = new CrudController();
		
//		String s = crud.insert(session, e);
//		String s = crud.update(session, e);
//		String s = crud.delete(session, e);
//		System.out.println(s);
		
//		System.out.println(crud.retrieve(session, e.getEmpno()));
		
		
		
//		for(int i = 0; i<10;) {
//			Employee e = new Employee();
//			e.setEmpno(++i);
//			e.setEmpname("name"+i);
//			e.setEmail("name"+i+"@g.c");
//			session.save(e);
//		}
		
//HQL Query
//		
//		Query q = session.createQuery("from Employee");
//		List<Employee> list =  q.list();
//		System.out.println(list);
//		
		
//		Query q = session.createQuery("from Employee where empno=2");
//		Employee e =  (Employee) q.uniqueResult();
//		System.out.println(e);
		
//		Query q = session.createQuery("from Employee where empno>2");
//		List<Employee> list =  q.list();
//		System.out.println(list);
//		
		
//		Query q = session.createQuery("select empname, email from Employee where empno=2");
//		Object[] e =  (Object[]) q.uniqueResult();
//		System.out.println(e[0]+ " "+ e[1]);
		
//		Query q = session.createQuery("select empname, email from Employee where empno>2");
//		List<Object[]> e =  q.list();
//		
//		for(Object emp[]:e) {
//		System.out.println(emp[0]+ " "+ emp[1]);
//		}
	
//Update HQL Query
//		Employee e = new Employee();
//		Query q = session.createQuery("update Employee set empname =:name where empno=:no ");
//		System.out.println("Enter Employee Id");
//		e.setEmpno(sc.nextInt());
//		System.out.println("Enter new Employee Name");
//		e.setEmpname(sc.next());
//		
//		q.setParameter("name", e.getEmpname());
//		q.setParameter("no", e.getEmpno());
//		q.executeUpdate();
		
//Delete HQL Query
		Employee e = new Employee();
		Query q = session.createQuery("delete from Employee where empno=:no ");
		System.out.println("Enter Employee Id");
		e.setEmpno(sc.nextInt());
//		System.out.println("Enter new Employee Name");
//		e.setEmpname(sc.next());
		
//		q.setParameter("name", e.getEmpname());
		q.setParameter("no", e.getEmpno());
		q.executeUpdate();
		
		tran.commit();
		session.close();
		sf.close();
	}

}
