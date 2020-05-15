package com.javalec.ex.BDto;

public class ADto {

	public ADto(){
		
	}
	
 public	ADto(String aId,String aPw){
		this.aId=aId;
		this.aPw=aPw;
	}
	
private	String aId;
private	String aPw;

	public String getaId() {
		return aId;
	}

	public void setaId(String aId) {
		this.aId = aId;
	}

	public String getaPw() {
		return aPw;
	}

	public void setaPw(String aPw) {
		this.aPw = aPw;
	}
	
	
	
}
