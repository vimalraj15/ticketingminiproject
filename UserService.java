package com.example.demo.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.User;
import com.example.demo.repository.UserRepository;


@Service
public class UserService 
{
    
	@Autowired
	UserRepository userrepository;
	
	
	public void save(User user)
	{
	
		userrepository.save(user);
		
	}

	
}
