package com.example.demo.Model;

public class Vimalraj 
{
   
	private String contact;
	private String company;
	private String mailid;
	private String phoneno;
	private String facebook;
	private String twitter;
	
	
	
	public Vimalraj(String contact, String company, String mailid, String phoneno, String facebook, String twitter) {
		super();
		this.contact = contact;
		this.company = company;
		this.mailid = mailid;
		this.phoneno = phoneno;
		this.facebook = facebook;
		this.twitter = twitter;
	}
	public Vimalraj(String company, String mailid, String phoneno, String facebook, String twitter) {
		super();
		this.company = company;
		this.mailid = mailid;
		this.phoneno = phoneno;
		this.facebook = facebook;
		this.twitter = twitter;
	}
	
	public Vimalraj() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Vimalraj(String contact) 
	{
		super();
		this.contact = contact;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	
}
