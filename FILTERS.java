package com.example.demo.Model;

public class FILTERS {
	
	
	private String contact;
	private String company;
	private String mailid;
	private String phoneno;
	private String facebook;
	private String twitter;
	
	public FILTERS(String contact) {
		super();
		this.contact = contact;
	}





	public FILTERS(String company, String mailid, String phoneno, String facebook, String twitter) {
		super();
		this.company = company;
		this.mailid = mailid;
		this.phoneno = phoneno;
		this.facebook = facebook;
		this.twitter = twitter;
	}





	public FILTERS(String contact, String company, String mailid, String phoneno, String facebook, String twitter) {
		super();
		this.contact = contact;
		this.company = company;
		this.mailid = mailid;
		this.phoneno = phoneno;
		this.facebook = facebook;
		this.twitter = twitter;
	}
	
	

}
