
package com.example.demo.Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ResourceBundle;

import org.springframework.stereotype.Service;

@Service
public class ConnectionFactory {
	
	private static Connection con = null;
	
	public static Connection getConnection()  throws Exception
	{
		
		if(con == null )
		{
			ResourceBundle bundle =ResourceBundle.getBundle("com/example/demo/Controller/dbConfig");
			
			String dc =bundle.getString("driverclass");
			String url =bundle.getString("url");
			String uid=bundle.getString("username");
			String pwd =bundle.getString("password");
		   
			Class.forName(dc);
		    con= DriverManager.getConnection(url,uid,pwd);
		
		}
		
		return con;
		
	}
}


