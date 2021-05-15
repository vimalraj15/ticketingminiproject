package com.example.demo.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tooling")
public class Tooling 
{

	@Id
	@Column(name = "name")
	private String name;

	@Column(name = "subject")
	private String subject;

	@Column(name = "severity")
	private String severity;

	@Column(name = "category")
	private String category;

	@Column(name = "region")
	private String region;
	
	
	@Column(name = "escalate")
	private String escalate;

	@Column(name = "department")
	private String department;

	@Column(name = "too")
	private String too;

	@Column(name = "description")
	private String description;

	public Tooling() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tooling(String name, String subject, String severity, String category, String region, String escalate,
			String department, String too, String description) {
		super();
		this.name = name;
		this.subject = subject;
		this.severity = severity;
		this.category = category;
		this.region = region;
		this.escalate = escalate;
		this.department = department;
		this.too = too;
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSeverity() {
		return severity;
	}

	public void setSeverity(String severity) {
		this.severity = severity;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getEscalate() {
		return escalate;
	}

	public void setEscalate(String escalate) {
		this.escalate = escalate;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getToo() {
		return too;
	}

	public void setToo(String too) {
		this.too = too;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
