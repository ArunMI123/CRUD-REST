package com.service;
import com.bean.personal;
import com.bean.resume;
public interface PostInf {
	
  /*  crud opertion*/
        public String create(personal p);
	public String update(personal p);
	public String delete(personal p);
	/*second crud operation*/
	public String create1(resume r);
	public String update1(resume r);
	public String delete1(resume r);
}
