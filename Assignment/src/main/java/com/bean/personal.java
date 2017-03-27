package com.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.springframework.context.annotation.Configuration;

@Entity
@Table(name = "personal")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
@Configuration
public class personal implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	 @GeneratedValue
	 @Column(name = "id")
	private int id;
	 @Column(name = "name")
	private String name;
	 @Column(name = "email")
	 private String email;
	 @Column(name = "password")
	 private String password;
	 @Column(name = "dob")
	 private String dob;
	 @Column(name = "gender")
	 private String gender;
	 @Column(name = "phone")
	 private String phone;
	 @Column(name = "address")
	 private String address;
	 @Column(name = "country")
	 private String country;
	 @Column(name = "hobbies")
	 private String hobbies;
	 
	 
	 
	 
	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getDob() {
		return dob;
	}




	public void setDob(String dob) {
		this.dob = dob;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getCountry() {
		return country;
	}




	public void setCountry(String country) {
		this.country = country;
	}




	public static long getSerialversionuid() {
		return serialVersionUID;
	}




	public String getHobbies() {
		return hobbies;
	}




	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}




	public void setId(int id) {
		this.id = id;
	}




	public int getId() {
		return id;
	}
}
	