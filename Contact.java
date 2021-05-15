package com.example.demo.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="contacts")
public class Contact 
{
    @Id
    @Column(name = "contact")
	private String contact;
	
    @Column(name = "company")
    private String company;
    
    @Column(name = "mailid")
	private String mailid;
    
    @Column(name = "phoneno")
	private String phoneno;
    
    @Column(name = "facebook")
	private String facebook;
    
    @Column(name = "twitter")
	private String twitter;
	

	public Contact() 
	{
		super();	
	}
	public Contact(String contact, String company, String mailid, String phoneno, String facebook, String twitter) {
		super();
		this.contact = contact;
		this.company = company;
		this.mailid = mailid;
		this.phoneno = phoneno;
		this.facebook = facebook;
		this.twitter = twitter;
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
	@Override
	public String toString() {
		return "Contact [contact=" + contact + ", company=" + company + ", mailid=" + mailid + ", phoneno=" + phoneno
				+ ", facebook=" + facebook + ", twitter=" + twitter + "]";
	}
	
	
	
}
