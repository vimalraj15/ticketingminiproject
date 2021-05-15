package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.Model.Tooling;
import com.example.demo.repository.ToolingRepository;

@Service
public class ToolingService 
{
	@Autowired
     ToolingRepository toolingrepository;
	
	
	public List<Tooling> getall()
	{
		List<Tooling> e = toolingrepository.findAll();		
		return e;			
	}
	
	public void save(Tooling tool )
	{
		toolingrepository.save(tool);
					
	}
	
	
}
