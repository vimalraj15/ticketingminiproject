package com.example.demo.Controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ApplicationController 
{
	@RequestMapping("/jj")
	public String codeqqqq()
	{
		return "murali";
	}
	
	
	@RequestMapping("/c")
	public String code()
	{
		return "Code";
	}

	@RequestMapping("/dg")
	public String co()
	{
		return "CChange";
	}
	@RequestMapping("/vial")
	public String cfde()
	{
		return "DAshboardjsp";
	}
	@RequestMapping("/con")
	public String con()
	{
		return "conup";
	}
	@RequestMapping("/full")
	public String full()
	{
		return "Full";
	}
	@RequestMapping("/vimal")
	public String status()
	{
		return "Chartsjsp";
	}
	@RequestMapping("/")
	public String login()
	{
		return "Vimal";
	}
	@RequestMapping("/logoutsucess")
	public String logout()
	{
		return "logout";
	}
	
	
	@RequestMapping("/sop")
	public String chart()
	{
		return "Chartsjsp";
	}


	@RequestMapping("/vss")
	public String setting()
	{
		return "Setting";
	}
	@RequestMapping("/y")
	public String filter()
	{
		return "FILTER";
	}
	@RequestMapping("/ci")
	public String file()
	{
		return "Filename";
	}
	@RequestMapping("/r")
	public String report()
	{
		return "Report";
	}
	@RequestMapping("/usersetting")
	public String usersetting()
	{
		return "userset";
	
	}
	@RequestMapping("/ticketsetting")
	public String ticektsetting()
	{
		return "ticketset";
	}
	@RequestMapping("/oo")
	public String ooo()
	{
		return "successfull";
	}
	@RequestMapping("/contactsetting")
	public String contactsetting()
	{
		return "contactset";
	}
	
	@RequestMapping("/d")
	public String Dash()
	{
		return "Dashboard";
	}
	
	@RequestMapping("/f")
	public String register()
	{
		return "welcomepage";
	}
	@RequestMapping("/t")
	public static String ticket()
	{
		return "TicketForm";
	}
	
	@RequestMapping("/tp")
	public String ticketspage()
	{ 
	  
	   	return "Ticekts";
	   
	}
	
	@RequestMapping("/cp")
	public String contactspage()
	{  
	   
	   	return "ContactPage";
	   
	}
	@RequestMapping("/cf")
	public String contactsform()
	{  
	   
	   	return "ContactForm";
	   
	}
	@RequestMapping("/murali")
	public String condtactsform()
	{  
	   
	   	return "Table";
	   
	}
	
}
