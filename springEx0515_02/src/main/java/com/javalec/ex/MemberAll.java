package com.javalec.ex;

import java.util.ArrayList;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class MemberAll implements InitializingBean,DisposableBean {

	private ArrayList<Member> list;

	public MemberAll() {}
	public MemberAll(ArrayList<Member> list) {
		this.list=list;
	}
	public ArrayList<Member> getList() {
		return list;
	}

	public void setList(ArrayList<Member> list) {
		this.list = list;
	}
	public void destroy() throws Exception {
		System.out.println("MemberAll DisposableBean 실행됨");
		
	}
	public void afterPropertiesSet() throws Exception {
		System.out.println("MemberAll InitializingBean 실행됨");
		
	}
	
	
}
