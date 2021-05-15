package com.example.demo.Model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "tickets")
public class Ticket 
{
 
       @Id
       @Column(name = "contact")
       private String contact;
       
       @Column(name = "subject")
	   private String subject;
	
       @Column(name = "status")
       private String  status;
       
       @Column(name = "priority")
	   private String  priority;
	 
       @Column(name = "groupname")
       private String  groupname;
       
       @Column(name = "assignedto")
	   private String assignedto;
       
       @Column(name = "description")
       private String  description;
     
       @Column(name = "tickets")
       private String  tickets;

    
       public Ticket() 
       {
   		super();
   		
   	   }
       

	public Ticket(String contact, String subject, String status, String priority, String groupname, String assignedto,
			String description, String tickets) {
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


	public Ticket(String contact, String subject, String status, String priority, String groupname, String assignedto,
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
	public String getTickets() {
		return tickets;
	}


	public void setTickets(String tickets) {
		this.tickets = tickets;
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
	public String getAssignedto() {
		return assignedto;
	}
	public void setAssignedto(String assignedto) {
		this.assignedto = assignedto;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}	
       
       
	
}
