package com.dao;
import com.bean.personal;
import com.bean.resume;

public interface PostDaoInf {
	
    /*crud operation*/
    
    public String create(personal p);
	public String update(personal p);
	public String delete(personal p);
	public String create1(resume r);
	public String update1(resume r);
	public String delete1(resume r);
}
