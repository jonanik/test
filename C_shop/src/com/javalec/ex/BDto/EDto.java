package com.javalec.ex.BDto;

import java.sql.Timestamp;

public class EDto {

	public EDto(){
		
	}
	
	public EDto(String btitle,String bcontent,String bfile,Timestamp bdate){
		this.btitle=btitle;
		this.bcontent=bcontent;
		this.bfile=bfile;
		this.bdate=bdate;
	}
	
private	String btitle;
private	String bcontent;
private	String bfile;
private	Timestamp bdate;

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBfile() {
		return bfile;
	}

	public void setBfile(String bfile) {
		this.bfile = bfile;
	}

	public Timestamp getBdate() {
		return bdate;
	}

	public void setBdate(Timestamp bdate) {
		this.bdate = bdate;
	}
	
	
	
}
