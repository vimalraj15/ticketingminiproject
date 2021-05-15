package com.example.demo.Model;

public class Filter 

{
	private String mailid;

    private String contact;
    private String subject;
    private String status;
    private String priority;
    private String groupname;
    private String assignedto;
    private String description;
    private String tickets;
    
    
    
	public String getTickets() {
		return tickets;
	}









	public void setTickets(String tickets) {
		this.tickets = tickets;
	}









	public Filter( String contact, String subject, String status, String priority, String groupname,
			String assignedto, String description, String tickets) {
		super();
		this.contact = contact;
		this.subject = subject;
		this.status = status;
		this.priority = priority;
		this.groupname = groupname;
		this.assignedto = assignedto;
		this.description = description;
		this.tickets = tickets;
	}









	public Filter() {
		super();
		// TODO Auto-generated constructor stub
	}

    
    

	




	public Filter(String contact, String subject, String status, String priority, String groupname, String assignedto,
			String description) {
		super();
		this.contact = contact;
		this.subject = subject;
		this.status = status;
		this.priority = priority;
		this.groupname = groupname;
		this.assignedto = assignedto;
		this.description = description;
	}









	public Filter(String mailid) {
		super();
		this.mailid = mailid;
	}









	public String getAssignedto() {
		return assignedto;
	}









	public void setAssignedto(String assignedto) {
		this.assignedto = assignedto;
	}









	public Filter(String contact, String subject, String status, String priority, String groupname,
			String description) {
		super();
		this.contact = contact;
		this.subject = subject;
		this.status = status;
		this.priority = priority;
		this.groupname = groupname;
		this.description = description;
	}


	public String getMailid() {
		return mailid;
	}




	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	public String getContact() {
		return contact;
	}




	public void setContact(String contact) {
		this.contact = contact;
	}




	public String getSubject() {
		return subject;
	}




	public void setSubject(String subject) {
		this.subject = subject;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public String getPriority() {
		return priority;
	}




	public void setPriority(String priority) {
		this.priority = priority;
	}




	public String getGroupname() {
		return groupname;
	}




	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}
	
    
    
}
