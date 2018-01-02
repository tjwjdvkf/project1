package com.sjh.vo;

public class CrudVO {
	
	private String crno,		//번호
				   crtitle,		//제목
				   userno,		//작성자
				   crmemo,		//내용
				   crdate;		//작성일자
   private String  usernm;    	// 작성자 이름
public String getCrno() {
	return crno;
}
public void setCrno(String crno) {
	this.crno = crno;
}
public String getCrtitle() {
	return crtitle;
}
public void setCrtitle(String crtitle) {
	this.crtitle = crtitle;
}
public String getUserno() {
	return userno;
}
public void setUserno(String userno) {
	this.userno = userno;
}
public String getCrmemo() {
	return crmemo;
}
public void setCrmemo(String crmemo) {
	this.crmemo = crmemo;
}
public String getCrdate() {
	return crdate;
}
public void setCrdate(String crdate) {
	this.crdate = crdate;
}
public String getUsernm() {
	return usernm;
}
public void setUsernm(String usernm) {
	this.usernm = usernm;
}
@Override
public String toString() {
	return "CrudVO [crno=" + crno + ", crtitle=" + crtitle + ", userno=" + userno + ", crmemo=" + crmemo + ", crdate="
			+ crdate + ", usernm=" + usernm + "]";
}
   
   
   
   
   
}
