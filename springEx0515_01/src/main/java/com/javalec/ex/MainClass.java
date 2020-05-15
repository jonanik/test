package com.javalec.ex;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		GenericXmlApplicationContext ctx=new GenericXmlApplicationContext();
		
		ctx.load("classpath:appCTX.xml");
		
		ctx.refresh(); //initializingBean()이 실행된다.
		
		Student student=ctx.getBean("student",Student.class);
		System.out.println("학생이름:"+student.getName());
		System.out.println("학생나이:"+student.getAge());
		
		ctx.close();//disposableBean()
	}

}
