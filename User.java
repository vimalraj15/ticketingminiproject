package com.example.demo.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mytables")
public class User {

	@Id
	@Column(name = "mailid")
	private String mailid;

	@Column(name = "firstname")
	private String firstname;

	@Column(name = "lastname")
	private String lastname;

	@Column(name = "company")
	private String company;

	@Column(name = "phoneno")
	private String phoneno;

	public User(String firstname, String lastname, String mailid, String company, String phoneno) {
		super();

		this.firstname = firstname;
		this.lastname = lastname;
		this.mailid = mailid;
		this.company = company;
		this.phoneno = phoneno;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String mailid) {
		this.mailid = mailid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMailid() {
		return mailid;
	}

	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	@Override
	public String toString() {
		return "User [mailid=" + mailid + ", firstname=" + firstname + ", lastname=" + lastname + ", company=" + company
				+ ", phoneno=" + phoneno + "]";
	}
	

}
