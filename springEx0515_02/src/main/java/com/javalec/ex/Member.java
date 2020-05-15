package com.javalec.ex;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class Member implements InitializingBean,DisposableBean {

	Member(){}
	Member(String memNum,String name,int age,String phone,String address){
		this.memNum=memNum;
		this.name=name;
		this.age=age;
		this.phone=phone;
		this.address=address;
		
	}
	
	String memNum;
	String name;
	int age;
	String phone;
	String address;
	
	
	public String getMemNum() {
		return memNum;
	}
	public void setMemNum(String memNum) {
		this.memNum = memNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	public void destroy() throws Exception {
		System.out.println("Member DisposableBean 실행됨");
		
	}
	public void afterPropertiesSet() throws Exception {
		System.out.println("Member InitializingBean 실행됨");
		
	}
	
	
	
}
