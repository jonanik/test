package com.javalec.ex.BDto;

import java.sql.Timestamp;

public class MDto {

	

	public MDto(){
		
	}
	
public MDto(String mName,String mId,String mPw,String mEmail,String mAddress,String mPhone,
	String mBirth,String mGender,String mRadio,String mTextAgree,
	String mJob,String mMarriage,
	String mInterest,Timestamp mjoinDate){
	
	this.mName=mName;
	this.mId=mId;
	this.mPw=mPw;
	this.mEmail=mEmail;
	this.mAddress=mAddress;
	this.mPhone=mPhone;
	this.mBirth=mBirth;
	this.mGender=mGender;
	this.mRadio=mRadio;
	this.mTextAgree=mTextAgree;
	this.mJob=mJob;
	this.mMarriage=mMarriage;
	this.mInterest=mInterest;
	this.setMjoinDate(mjoinDate);
	} 
	
private	String mName;
private	String mId;
private	String mPw;
private	String mEmail;
private	String mAddress;
private	String mPhone;
private	String mBirth;
private	String mGender;
private	String mRadio;
private	String mTextAgree;
private	String mJob;
private	String mMarriage;
private	String mInterest;
private Timestamp mjoinDate;

public String getmName() {
	return mName;
}

public void setmName(String mName) {
	this.mName = mName;
}

public String getmId() {
	return mId;
}

public void setmId(String mId) {
	this.mId = mId;
}

public String getmPw() {
	return mPw;
}

public void setmPw(String mPw) {
	this.mPw = mPw;
}

public String getmEmail() {
	return mEmail;
}

public void setmEmail(String mEmail) {
	this.mEmail = mEmail;
}

public String getmAddress() {
	return mAddress;
}

public void setmAddress(String mAddress) {
	this.mAddress = mAddress;
}

public String getmPhone() {
	return mPhone;
}

public void setmPhone(String mPhone) {
	this.mPhone = mPhone;
}

public String getmBirth() {
	return mBirth;
}

public void setmBirth(String mBirth) {
	this.mBirth = mBirth;
}

public String getmGender() {
	return mGender;
}

public void setmGender(String mGender) {
	this.mGender = mGender;
}

public String getmRadio() {
	return mRadio;
}

public void setmRadio(String mRadio) {
	this.mRadio = mRadio;
}

public String getmTextAgree() {
	return mTextAgree;
}

public void setmTextAgree(String mTextAgree) {
	this.mTextAgree = mTextAgree;
}

public String getmJob() {
	return mJob;
}

public void setmJob(String mJob) {
	this.mJob = mJob;
}

public String getmMarriage() {
	return mMarriage;
}

public void setmMarriage(String mMarriage) {
	this.mMarriage = mMarriage;
}

public String getmInterest() {
	return mInterest;
}

public void setmInterest(String mInterest) {
	this.mInterest = mInterest;
}

public Timestamp getMjoinDate() {
	return mjoinDate;
}

public void setMjoinDate(Timestamp mjoinDate) {
	this.mjoinDate = mjoinDate;
}

}
