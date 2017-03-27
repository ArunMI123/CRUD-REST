package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import com.bean.personal;
import com.bean.resume;
import com.dao.PostDaoInf;

public class PostImpl implements PostInf {
	
	@Autowired
	PostDaoInf daoservice;

	@Override
	public String create(personal p) {
		daoservice.create(p);
		
		return "done";
	}
	
	@Override
	public String update(personal p) {
   daoservice.update(p);
		return "done";
	}
	@Override
	public String delete(personal p) {
		   daoservice.delete(p);

		return "done";
	}
	@Override
	public String create1(resume r) {
		daoservice.create1(r);

		return "done";
	}
	@Override
	public String update1(resume r) {

daoservice.update1(r);
		return "done";
	}
	@Override
	public String delete1(resume r) {

daoservice.delete1(r);
		return null;
	}
	
	

}
