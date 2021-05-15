package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Contact;
import com.example.demo.repository.ContactRepository;

@Service
public class ContactService
{
	
	@Autowired
	ContactRepository contactrepository;
	
	public List<Contact> getall()
	{
		List<Contact> e = contactrepository.findAll();		
		return e;			
	}
	
	public void save(Contact contacts )
	{
		contactrepository.save(contacts);
					
	}
}
