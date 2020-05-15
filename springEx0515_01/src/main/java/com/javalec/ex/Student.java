package com.javalec.ex;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class Student implements InitializingBean,DisposableBean {

	public Student() {}
	public Student(String name,int age) {
		this.name=name;
		this.age=age;
	}
	
	private String name;
	private int age;
	
	
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
	
	
	public void afterPropertiesSet() throws Exception {
		System.out.println("afterPropertiesSet() 실행됨");
		
	}
	public void destroy() throws Exception {
		System.out.println("destroy()실행됨");
		
	}
	
	
}
