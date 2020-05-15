package com.javalec.ex;

import java.util.ArrayList;

import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		GenericXmlApplicationContext ctx=new GenericXmlApplicationContext();
		ctx.load("classpath:appCTX.xml");
		ctx.refresh();
		MedicalRecord medicalRecord=ctx.getBean("medicalRecord2",MedicalRecord.class);
		MemberAll memberAll=ctx.getBean("memberAll",MemberAll.class);
		ArrayList<Member> list=memberAll.getList();
		
		for(int i=0; i<list.size();i++) {
			Member member=list.get(i);
			if(member.getMemNum().equals(medicalRecord.getMemNum())) {
				System.out.println("환자이름:"+member.getName());
				System.out.println("환자나이:"+member.getAge());
				System.out.println("전화번호:"+member.getPhone());
				System.out.println("주소:"+member.getAddress());
				System.out.println("주치의:"+medicalRecord.getDoctor());
				System.out.println("담당간호사:"+medicalRecord.getNurse());
				System.out.println("치료날짜:"+medicalRecord.getDate());
				System.out.println("증상:"+medicalRecord.getCare());
				System.out.println("예약날짜:"+medicalRecord.getBook());
			}
		}

		ctx.destroy();
	}

}
