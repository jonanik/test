package com.javalec.ex;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class MedicalRecord implements InitializingBean,DisposableBean {

	public MedicalRecord() {}
	public MedicalRecord(String memNum,String date,String doctor,String nurse,String care,String book){
		this.memNum=memNum;
		this.date=date;
		this.doctor=doctor;
		this.nurse=nurse;
		this.care=care;
		this.book=book;
	}
	
	String memNum;//회원 번호
	String date;//치료날짜
	String doctor;//주치의
	String nurse;//담당 간호사
	String care;//치료 ex)감기증상
	String book;//예약
	
	public String getMemNum() {
		return memNum;
	}
	public void setMemNum(String memNum) {
		this.memNum = memNum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getNurse() {
		return nurse;
	}
	public void setNurse(String nurse) {
		this.nurse = nurse;
	}
	public String getCare() {
		return care;
	}
	public void setCare(String care) {
		this.care = care;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public void destroy() throws Exception {
		System.out.println("MedicalRecord DisposableBean 실행됨");
		
	}
	public void afterPropertiesSet() throws Exception {
		System.out.println("MedicalRecord InitializingBean 실행됨");
		
	}
	
}
