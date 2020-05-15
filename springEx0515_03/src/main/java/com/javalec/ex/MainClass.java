package com.javalec.ex;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx=new GenericXmlApplicationContext();
		ctx.load("classpath:appCTX.xml");
		ctx.refresh();
		Student student1=ctx.getBean("student",Student.class);
		Student student2=ctx.getBean("student",Student.class);
		
		
		System.out.println("student1 학생이름:"+student1.getName());
		System.out.println("student1 학생나이:"+student1.getAge());
		System.out.println("--------------------------------------");
		
		student2.setName("김유신");
		student2.setAge(30);
		
		System.out.println("student1 학생이름:"+student1.getName());//같은 빈에 있는걸 끌어쓰면 student1을 바꾸면 student2도 바뀐다.
		System.out.println("student1 학생나이:"+student1.getAge());// 왜냐면 빈의 범위가 싱글톤이라 하나의 객체를 쓰고 있기 때문이다.
		
		if(student1.equals(student2)) {
			System.out.println("2개 객체는 같습니다.");
		}else {
			System.out.println("2개 객체는 다릅니다.");
		}
		
		ctx.close();
		
	}
}
