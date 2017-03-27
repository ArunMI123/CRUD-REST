package com.dao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import com.bean.personal;
import com.bean.resume;
@Configuration
public class PostDaoImpl implements PostDaoInf{

	@Autowired
	 SessionFactory sessionFactory;

	 Session session = null;
	 Transaction tx = null;

@Override
public String create(personal p) {
	session = sessionFactory.openSession();
	  tx = session.beginTransaction();
	  session.save(p);
	     tx.commit();
	     session.close();
	return "done";
}

@Override
public String update(personal p) {
	session = sessionFactory.openSession();
	  tx = session.beginTransaction();
	  Query q=session.createQuery("update personal set name=:name,email=:email,password=:password,gender=:gender,phone=:phone,address=:address,country=:country,hobbies=:hobbies where dob=:dob");
	  q.setParameter("name", p.getName());
	  q.setParameter("email", p.getEmail());
	  q.setParameter("password", p.getPassword());
	  q.setParameter("dob", p.getDob());
	  q.setParameter("gender", p.getGender());
	  q.setParameter("phone", p.getPhone());
	  q.setParameter("address", p.getAddress());
	  q.setParameter("country", p.getCountry());
	  q.setParameter("hobbies", p.getHobbies());
	  q.executeUpdate();
	  tx.commit();
	     session.close();
	return "done";
}

@Override
public String delete(personal p) {
	session = sessionFactory.openSession();
	  tx = session.beginTransaction();
	  Query q=session.createQuery("delete from personal where dob=:dob");
	  q.setParameter("dob", p.getDob());
	  q.executeUpdate();
	  tx.commit();
	  session.close();
	 return "done"; 
}

@Override
public String create1(resume r) {
	session = sessionFactory.openSession();
	  tx = session.beginTransaction();
	  session.save(r);
   tx.commit();
   session.close();
	return "done";
}

@Override
public String update1(resume r) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public String delete1(resume r) {
	// TODO Auto-generated method stub
	return null;
}

/*@Override
public String update1(resume r) {
	session = sessionFactory.openSession();
	  tx = session.beginTransaction();
	  Query q=session.createQuery("update resume set fname=:fname,lname=:lname,dept=:dept,password=:password,email=:email,mobile=:mobile where id=:id");
	q.setParameter("id", r.getId());
	q.setParameter("fname", r.getFname());
	q.setParameter("lname", r.getLname());
	q.setParameter("dept", r.getDept());
	q.setParameter("password", r.getPassword());
	q.setParameter("email", r.getEmail());
	q.setParameter("mobile", r.getMobile());
	  q.executeUpdate();
	  tx.commit();
	     session.close();
	return null;
}

@Override
public String delete1(resume r) {
	session = sessionFactory.openSession();
	  tx = session.beginTransaction();
	  Query q=session.createQuery("delete from resume where id=:id");
	  q.setParameter("id", r.getId());
	  q.executeUpdate();
	  return "done";
}*/
}
