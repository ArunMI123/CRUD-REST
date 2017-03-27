package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.bean.personal;
import com.bean.resume;
import com.service.PostInf;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import io.swagger.annotations.ApiOperation;

@RestController
public class PostController {
	@Autowired
	PostInf service;
   
   /*Registration*/

   /*assign task*/
   @ApiOperation(value = "project detail",notes="project",response=personal.class)
   @RequestMapping(value ="/create", method = RequestMethod.POST)
   public@ResponseBody 
   String reg(@RequestBody personal p) {
  System.out.println("varuthu");
  System.out.println(p.getName());
String a=service.create(p);    
      return a;
    
   }
   
   
   /*resume*/
   @ApiOperation(value = "register",notes="project",response=resume.class)
   @RequestMapping(value ="/create1", method = RequestMethod.POST)
   public@ResponseBody 
   String reg12(@RequestBody resume r) {
	   System.out.println("coming");
String a=service.create1(r);    
      return a;
    
   }
   
   /*update project assign*/
   @ApiOperation(value = "project detail",notes="project",response=personal.class)
   @RequestMapping(value ="/update", method = RequestMethod.POST)
   public@ResponseBody 
   String update(@RequestBody personal p) {
  System.out.println("varuthu");
String a=service.update(p);    
      return a;
    
   }
   
   
   /*update project assign*/
   @ApiOperation(value = "register detail",notes="update",response=resume.class)
   @RequestMapping(value ="/update1", method = RequestMethod.POST)
   public@ResponseBody 
   String update(@RequestBody resume r) {
String a=service.update1(r);    
      return a;
    
   }
   
   
   
   
  
   @ApiOperation(value = "project detail",notes="project",response=personal.class)
   @RequestMapping(value ="/del", method = RequestMethod.POST)
   public@ResponseBody 
   String del(@RequestBody personal p) {
String a=service.delete(p);    
      return a;
    
   }

   @ApiOperation(value = "project detail",notes="project",response=personal.class)
   @RequestMapping(value ="/delete1", method = RequestMethod.POST)
   public@ResponseBody 
   String del(@RequestBody resume r) {
String a=service.delete1(r);    
      return a;
   }
}
