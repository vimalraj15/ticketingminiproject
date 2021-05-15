package com.example.demo.Controller;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Model.Contact;
import com.example.demo.Model.FILTERS;
import com.example.demo.Model.Filter;
import com.example.demo.Model.Ticket;
import com.example.demo.Model.Tooling;
import com.example.demo.Model.User;
import com.example.demo.Model.Vimalraj;
import com.example.demo.Service.ContactService;
import com.example.demo.Service.TicketService;
import com.example.demo.Service.ToolingService;
import com.example.demo.Service.UserService;

@RestController
public class RestControlle 
{
	@Autowired
	private SmtpMailSender smtpmailsender;
	@Autowired
	private UserService userservice;
	@Autowired
	private TicketService ticketservice;
	@Autowired
	private ContactService contactservice;	
	
	@Autowired
	private ToolingService toolservice;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private static String UPLOAD_FOLDER = "C://test//";
	private java.sql.Connection con;
	private Statement st;
	public  RestControlle() throws Exception
	{
 		con=ConnectionFactory.getConnection();
		st = con.createStatement();
	}
	@RequestMapping(value ="/verify", method = RequestMethod.GET)
	public ModelAndView verification(@RequestParam String mailid)throws Exception
	{
		 List <Integer>j = new ArrayList<>();
	     List<Filter > f =new ArrayList<>();
	     Filter sd= new Filter(mailid);
	     f.add(sd);
	 
	     int count =0 ;
         String k = "SELECT mailid FROM mytables WHERE mailid=?"; 
         List<String> check = jdbcTemplate.query(k,new Object[] { mailid } ,BeanPropertyRowMapper.newInstance(String.class));
        
         
		 int d =check.size();
		 
	     /*String k = "select mailid from mytables where mailid= +'"+mailid+"' ";
	     ResultSet rm =st.executeQuery(k);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 if(d > 0)
		 {
			 ModelAndView s = new ModelAndView();
			 String a ="The Mailid " +       mailid +" Already Existing";
	         s.addObject("mural", a);
	         s.setViewName("Vimal");
	         count =1;
	         return s;		
		 }
	
		 if( d==0)
		 {
			 String sqlInsert = "INSERT INTO code (mailid)"
		                + " VALUES (?)";
			 jdbcTemplate.update(sqlInsert,mailid);
			 
	     /*String sql ="insert into code(mailid) values('"+mailid+"')";
		 int inserted = st.executeUpdate(sql);*/
	
         String sqll = "SELECT code FROM code WHERE mailid=? order by code desc limit 0,1";
		 
		 int murali = jdbcTemplate.queryForObject(
		            sqll, new Object[] { mailid }, Integer.class);
		 System.out.println(murali);
		 
		 j.add(murali);
		 
		 /*String m = "select code from code where mailid= +'"+mailid+"' ";
		 ResultSet rs =st.executeQuery(m);    
		 while(rs.next())
	     {
		    	int murali = rs.getInt(1);	
		    	j.add(murali);
		    	break;
	     }*/
		 String g=String.valueOf(j.get(0));
		 smtpmailsender.send(mailid,"VERFICATION CODE",g);
		 ModelAndView s = new ModelAndView();
		 String a = mailid;
         s.addObject("vimal", f);
         s.addObject("murali",a);
         s.setViewName("welcomepage");
         return s;		
		 }
		return null;
	}
	@RequestMapping(value ="/save-user", method = RequestMethod.GET)
 	public ModelAndView saveUser(@RequestParam String firstname,@RequestParam String lastname,@RequestParam String mailid,@RequestParam String company,@RequestParam String phoneno,@RequestParam String code) throws Exception
	{
 		 String m = "SELECT code FROM code WHERE mailid=? order by code desc limit 0,1";

		 String murali  = (String) jdbcTemplate.queryForObject(
		            m, new Object[] { mailid }, String.class);
		 
		 
		 System.out.println(murali);
		 
		   /* String m = "select code from code where mailid= +'"+mailid+"' ";
		    ResultSet rs =st.executeQuery(m);    
			String murali ="";
		    while(rs.next())
		    {
		       murali = rs.getString(1);
		       System.out.println(murali);
		       break;
		    }*/
		 /*String ms = "SELECT mailid FROM code WHERE mailid=? ";

		 String murali2  = (String) jdbcTemplate.queryForObject(
		            ms, new Object[] { mailid }, String.class);
		 
		 
		 
		    /*String ms = "select mailid from code where mailid= +'"+mailid+"' ";
		    ResultSet rst =st.executeQuery(ms);    
			String murali2 ="";
		    while(rst.next())
		    {
		       murali2 = rst.getString(1);
		       System.out.println(murali);	
		       break;
		    } */  
	  if(murali.equals(code))
	  {
		  ModelAndView s = new ModelAndView();
		  User user= new User(firstname,lastname,mailid,company,phoneno);
		  userservice.save(user);
		  String g ="Successfully Created";
		  s.addObject("vimal", g);
          s.setViewName("Vimal"); 
		  return s;
	  }
	  else
	  {
		  ModelAndView e = new ModelAndView();    
		  String g ="...Check Verification Code";
		  String b=mailid;
		  e.addObject("muralimano",g);
		  e.addObject("murali",b);
          e.setViewName("welcomepage"); 
          return e;
	  }
	}
	@RequestMapping(value = {"/login-user"}, method = RequestMethod.GET)	
	public ModelAndView login(@RequestParam String mailid,HttpSession session) throws SQLException 
	{
		/*List<String> mail = new ArrayList<>();
		 User f =new User(mailid);
		 ModelAndView next = new ModelAndView("DAshboardjsp");
	     String sql = "select mailid from mytables";
	     ResultSet rs = st.executeQuery(sql);
	     while(rs.next())
	     {  
	    	  mail.add(rs.getString(1)); 
	     }
	     if(mail.contains(f.getMailid()))
	     {
		   return next; 
	     }*/
		/*String name = "select firstname from mytables where mailid= +'"+mailid+"' ";
	     ResultSet na =st.executeQuery(name);    
	     String pa ="";
		 while(na.next())
	     {
		        pa = na.getString(1);
		    	break;
	     }*/
		/* String k = "select mailid from mytables where mailid= +'"+mailid+"' ";
	     ResultSet rm =st.executeQuery(k);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	    }*/
		
		 try
		 {
			
		 String sql = "SELECT mailid FROM mytables WHERE mailid=?";

		 String checkavailable  = (String) jdbcTemplate.queryForObject(
		            sql, new Object[] { mailid }, String.class);
		
		 String sqll = "SELECT firstname FROM mytables WHERE mailid=?";
		 
		 String namedashboard = (String) jdbcTemplate.queryForObject(
		            sqll, new Object[] { mailid }, String.class);
		 
			    
	    if(checkavailable.equals(mailid))
	    {
	    	 //ModelAndView next = new ModelAndView("DAshboardjsp");
		 	 ModelAndView next = new ModelAndView("DAshboardjsp");	 
		
		 	 next.addObject("name", namedashboard);
		 
		 	 next.setViewName("murali");  
			 return next; 
	    }
	    else
	    {
		   ModelAndView message = new ModelAndView();
		   String g =" Invalid ";
		   message.addObject("vimal", g);   
           message.setViewName("hi");    
           return message;
	     }
		}
		 catch(Exception e)
		 {
			   ModelAndView message = new ModelAndView();
			   String g ="Invalid";
			   message.addObject("vimal", g);   
	           message.setViewName("Vimal");    
	           return message;	 
		 }
}
	@RequestMapping(value ="/new-ticket", method = RequestMethod.POST)
	public ModelAndView newTicket(@RequestParam String contact,@RequestParam String subject,@RequestParam String status,@RequestParam String priority,@RequestParam String groupname,@RequestParam String assignedto,@RequestParam String description) throws Exception
	{		
	     int count =0 ;
	     
	     String kq = "SELECT contact FROM tickets WHERE contact=?";
		
	     
		 List<String> check = jdbcTemplate.query(kq,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(String.class));
	     
		 int pq =check.size();
		 
	     /*String kq = "select contact from tickets where contact= +'"+contact+"' ";
	     ResultSet rw =st.executeQuery(kq);    
	     String pq ="";
		 while(rw.next())
	     {
		        pq = rw.getString(1);
		    	break;
	     }*/
		 if(pq > 0)
		 {
			 count =1;
		 }
		if(pq == 0)
		{
			
			 String q = "SELECT id FROM tickets order by id desc limit 1";
			 int l  = jdbcTemplate.queryForObject(
			            q, Integer.class);
			
			 System.out.println(l);
		     /*String q = "select id from tickets order by id desc limit 1";    
		     ResultSet rp =st.executeQuery(q);    
		     int l = 0 ;
			 while(rp.next())
		     {
			        l = rp.getInt(1);
			        System.out.println(l);
			        break;
		     }*/
			 String sql = "SELECT tickets FROM tickets order by id desc limit 1";

			 String p  = (String) jdbcTemplate.queryForObject(
			            sql, String.class);
			 
			 
		     /*String k = "select tickets from tickets order by id desc limit 1";
		     ResultSet rm =st.executeQuery(k);    
		     String p ="";
			 while(rm.next())
		     {
			        p = rm.getString(1);
			        System.out.println(p);
			        break;
		     } */
			// String d  = p.substring(4, p.length());
			 int g =l;
			 int increment = g+1;
			 String t =String.valueOf(increment);
			 String f= "TIC" +t;
			 System.out.println(f);
			 
			Ticket use= new Ticket(contact, subject,status ,priority,groupname,assignedto,description,f);
			 if(use.getContact() =="" || use.getAssignedto()=="")
		   {
		    	ModelAndView message= new ModelAndView();
		    	String  z =" Not Created Sucessfully";
		    	message.addObject("message", z);
		        message.setViewName("display");
		    	return message;     	
		   }
		    else
		    {			    
		    	ticketservice.save(use);

		    	  ModelAndView message = new ModelAndView();
		    	  String  z ="Created Sucessfully";
		    	  message.addObject("message", z);
		          message.setViewName("display");    
		    	  return message; 
	
		    }
		}
		ModelAndView message= new ModelAndView();
    	String  z ="Already Contact Available";
    	message.addObject("message", z);
        message.setViewName("display");
    	return message;  
		
	}
    @RequestMapping("/a")
    public ModelAndView Table() throws IOException, SQLException
	   {
		   List<Ticket> h = ticketservice.getall();
		  
           ModelAndView m = new ModelAndView();
           m.addObject("vimal",h);
           m.setViewName("Table");   
		   return m;
	   }
	@RequestMapping("/b")
    public ModelAndView Export() throws SQLException, IOException 
	   {
		   List<Ticket> h = ticketservice.getall();	   
		   FileOutputStream fout=new FileOutputStream("src/main/java/TICKETS.csv");
		   for(int i=1;i< h.size();i++)
	       {
			   String str = h.get(i).getDescription().replaceAll("\\<.*?\\>", "");
	            String s = h.get(i).getContact()+","+h.get(i).getSubject()+ ","+h.get(i).getStatus()+","+h.get(i).getPriority()+","+h.get(i).getGroupname()+","+h.get(i).getAssignedto()+","+str+","+h.get(i).getTickets();
	            String q=s.toString()+"\n";
	            byte[] first= q.getBytes();
				fout.write(first);
	        }
		     fout.close();
		     ModelAndView message = new ModelAndView();
		      	String  z ="Exported Sucessfully";
		    	message.addObject("message", z);
		        message.setViewName("display");
		    	return message;
		   
	   } 
	@RequestMapping(value ="/new-contact", method = RequestMethod.POST)
	public ModelAndView newContacts(@RequestParam String contact,@RequestParam String company,@RequestParam String mailid,@RequestParam String phoneno,@RequestParam String facebook,@RequestParam String twitter) throws Exception
	{
		
	      String email = mailid;
	      String nn =phoneno;
	      String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
	      boolean r =email.matches(regex);
	      if(r == false || nn.length()<10)
	      {
	    	  ModelAndView message = new ModelAndView();
		      	String  z = contact +" check mailid and contact form";
		    	message.addObject("message", z);
		        message.setViewName("display");
		    	return message;     
	    	  
	      }
	      if(r)
	      {      
		    Contact use= new Contact(contact, company,mailid ,phoneno,facebook,twitter);   
		    String k = "SELECT contact FROM contacts WHERE contact=?";
			 
			 List<String> check = jdbcTemplate.query(k,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(String.class));
		     
			 int pq =check.size();
	     	   
			     /*String k = "select contact from contacts where contact = +'"+contact+"' ";
			     ResultSet rm =st.executeQuery(k);    
			     String p ="";
				 while(rm.next())
			     {
				        p = rm.getString(1);
				    	break;
			     }*/
				 if(pq > 0)
				 {
					    ModelAndView message = new ModelAndView();
				      	String  z = contact +" already available";
				    	message.addObject("message", z);
				        message.setViewName("display");
				    	return message;     
				 }
			    
			    if(pq == 0)
			    {
			      	contactservice.save(use);
			        ModelAndView message = new ModelAndView();
			      	String  z ="Created Sucessfully";
			    	message.addObject("message", z);
			        message.setViewName("display");
			    	return message;     	
			   }
	      }
		return null;
	}
	@RequestMapping("/contact-table")
	public ModelAndView ContactTable() throws IOException, SQLException
	   {
		 
		   List<Contact> h = contactservice.getall(); 
           ModelAndView contact = new ModelAndView();
           contact.addObject("vimal", h);
           contact.setViewName("ConatctTable");   
		   return contact;
	   }
	@RequestMapping("/contact-export")
	public ModelAndView ContactExport() throws SQLException, IOException 
	   {
		   List<Contact> h = contactservice.getall();
		   FileOutputStream fout=new FileOutputStream("src/main/java/CONTACTS.txt");
		   
		   for(int i=0;i< h.size();i++)
	       {
	            String s = h.get(i).getContact()+","+h.get(i).getCompany()+ ","+h.get(i).getMailid()+","+h.get(i).getPhoneno()+","+h.get(i).getFacebook()+","+h.get(i).getTwitter();
	            String q=s.toString()+"\n";
	            byte[] first= q.getBytes();
				fout.write(first);      
	       }
		     fout.close();
		     ModelAndView message = new ModelAndView();
		      	String  z ="Exported Sucessfully";
		    	message.addObject("message", z);
		        message.setViewName("display");
		    	return message;
	   }
	@RequestMapping("/contact-import")
	public ModelAndView conatctImport(@RequestParam String filename) throws IOException
	   {
	       String f =filename+".txt";
	       try
	       {
		   FileInputStream fin = new FileInputStream("src/main/java/"+f);
		   InputStreamReader source = new InputStreamReader(fin);
		   BufferedReader br = new BufferedReader(source);
		   String heading = br.readLine();
		   String h =heading.toLowerCase();
		   String check[] = h.split(",");
		   int len =check.length;
		   String SecondLine=br.readLine(); 
		   if((len == 6 )&&check[0].contains("contact") && check[1].contains("company") &&check[2].contains("mailid") && check[3].contains("phoneno") && check[4].contains("facebook") && check[5].contains("twitter"))
		   {  
			   while(SecondLine != null)
			   {   
		  		   String split [] = SecondLine.split(",");
				   Contact con= new Contact(split[0], split[1],split[2] ,split[3],split[4],split[5]);
				   contactservice.save(con);
				   SecondLine=br.readLine();  
			   }
			   br.close();
			   fin.close();
		   }
		   else
		   {
			   fin.close();
			   br.close();
			   ModelAndView message = new ModelAndView();
		      	String  z ="NOT IMPORTED..COLUMNS MISMATCH";
		    	message.addObject("message", z);
		        message.setViewName("Filename");
		    	return message; 
		   }
	       }
	       catch(Exception ex)
	       {
	    	
	    	   String v= ex.getLocalizedMessage() + "NO FILE AVAILABLE";
	    	   ModelAndView message = new ModelAndView();
		      
		    	message.addObject("message", v);
		        message.setViewName("Filename");
		    	return message;     
	    	   
	       }
	       ModelAndView message = new ModelAndView();
	      	String  z ="Imported Successfully";
	    	message.addObject("message", z);
	        message.setViewName("Filename");
	    	return message;
	   }
	@RequestMapping(value ="/yf", method = RequestMethod.GET)
	public ModelAndView filter(@RequestParam String tickets) throws Exception
		{
	    
		 String k = "SELECT tickets FROM tickets WHERE tickets=?";

		 List<String> check = jdbcTemplate.query(k,new Object[] { tickets } ,BeanPropertyRowMapper.newInstance(String.class));
		
        int pq =check.size();
		
	     /*String k = "select tickets from tickets where tickets= +'"+tickets+"' ";
	     ResultSet rm =st.executeQuery(k);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 if(pq > 0)
		 {
			 System.out.println("murali");
			 List <Filter>j = new ArrayList<>();   
			 String ke = "SELECT contact,subject,status,priority,groupname,assignedto,description,tickets FROM tickets WHERE tickets=?";
			 
			 List<Filter> checkd = jdbcTemplate.query(ke,new Object[] {tickets } ,BeanPropertyRowMapper.newInstance(Filter.class));
			 
			 j.addAll(checkd);
			 /*String Sql = "select contact,subject,status,priority,groupname,assignedto,description,tickets from tickets where tickets= +'"+tickets+"' ";
			 
			 
			    ResultSet rs =st.executeQuery(Sql);
			    while(rs.next())
			    {
			    	Filter f =new Filter(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));	
			    	j.add(f);
			    	break;
			    }*/
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal",j);
	           m.setViewName("Change");
	   		   return m;			 	
		 }
		 else
		 {
			 ModelAndView s = new ModelAndView();
			 String a = tickets +"Not available...Check The Tickets...TIC";
	         s.addObject("vimal", a);
	         s.setViewName("FILTER");
	         return s;	
		 }

	
	}
	@RequestMapping(value ="/yc", method = RequestMethod.GET)
	public ModelAndView CChange(@RequestParam String contact) throws Exception
    {
		

		 String o = "SELECT contact FROM contacts WHERE contact=?";
		 List<String> check = jdbcTemplate.query(o,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(String.class));
		 
		 int pq =check.size();
		 /*String o = "select contact from contacts where contact= +'"+contact+"' ";
	     ResultSet rm =st.executeQuery(o);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 
		 if(pq > 0)
		 {
			  List<Vimalraj>k =new ArrayList<>(); 
			 String Sql = "SELECT contact,company,mailid,phoneno,facebook,twitter FROM contacts WHERE contact=?"; 

			 List<Vimalraj> checkd = jdbcTemplate.query(Sql,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(Vimalraj.class));
	       
		     k.addAll(checkd);
		    
			 
			 //String Sql = "select contact,company,mailid,phoneno,facebook,twitter from contacts where contact= +'"+contact+"' ";
	      
			 
			 //List<Vimalraj>k =new ArrayList<>(); 
	       /*ResultSet rs =st.executeQuery(Sql);
	       while(rs.next())
		    {
		    	Vimalraj f =new Vimalraj(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));	
		    	k.add(f);
		    	break;
		    }*/
	   
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", k);
	           m.setViewName("CCChange");
	   		   return m;
		 }
		 else
		 {
			 ModelAndView s = new ModelAndView();
			 String a = contact +"Not available...Check The Contact...";
	         s.addObject("vimal", a);
	         s.setViewName("CChange");
	         return s;	
		 }
		    
    }
	@RequestMapping(value ="/yd", method = RequestMethod.GET)
	public ModelAndView upcontact(@RequestParam String contact) throws Exception
	   {	    
		
		List <FILTERS>j = new ArrayList<>();
		 String Sql = "SELECT company,mailid,phoneno,facebook,twitter FROM contacts WHERE assignedto=?";
		 List<FILTERS> check = jdbcTemplate.query(Sql,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(FILTERS.class));
		 j.addAll(check);
		 
		 
	 	 /*   String Sql = "select company,mailid,phoneno,facebook,twitter from contacts where assignedto= +'"+contact+"' ";
			    List <FILTERS>j = new ArrayList<>();
			    ResultSet rs =st.executeQuery(Sql);
			    while(rs.next())
			    {
			    	FILTERS f =new FILTERS(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));	
			    	j.add(f);
			    	break;
			    }*/
	           if(j.size() ==0)
	           {
	        	   ModelAndView a = new ModelAndView("Not");
	        	   return a;
	           }
	           else
	           {
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", j);
	           m.setViewName("Change");
	   		   return m;
	           }
		}
	@RequestMapping(value ="/change-one", method = RequestMethod.GET)
    public ModelAndView  changeone(@RequestParam String userchange,@RequestParam String data,@RequestParam String to) throws Exception
		{
		   
		  String sql ="update tickets set "+userchange+" = '" +data+ "' where contact = +    '"+to+"' ";
		   //int check = jdbcTemplate.update(sql,new Object[] {data,to } ,BeanPropertyRowMapper.newInstance(String.class));
		  
		  int check =jdbcTemplate.update(sql);
		   
		   //String sql ="update tickets set "+userchange+" = '" +data+ "' where contact = +    '"+to+"' ";
		   //int  n =st.executeUpdate(sql);
		   if(check>0)
		   {      
			   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", "Values Updated Sucessfully");
	           m.setViewName("FILTER");
			   return m;
		   }   
		   else
		   {
			   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", "Not Updated...Check The Values");
	           m.setViewName("FILTER");
		   }
		return null;
		}
	@RequestMapping(value ="/change-two", method = RequestMethod.GET)
    public ModelAndView  changetwo(@RequestParam String userchange,@RequestParam String data,@RequestParam String to) throws Exception
		{
		   String sql ="update contacts set "+userchange+" = '" +data+ "' where contact = +    '"+to+"' ";
		 
		   int check =jdbcTemplate.update(sql); 
		   if(check > 0)
		   {  
			   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", "Values Updated Sucessfully");
	           m.setViewName("CChange");
			   return m;
		   }   
		   else
		   {
		   ModelAndView m = new ModelAndView();
           m.addObject("vimal", "Not Updated...Check The Values");
           m.setViewName("CChange");
           return m;
		   }
	
		}
	@RequestMapping(value ="/change", method = RequestMethod.GET)
	public ModelAndView changesall(@RequestParam String contact,@RequestParam String subject,@RequestParam String status,@RequestParam String priority,@RequestParam String groupname,@RequestParam String description) throws Exception
		{
		          
		   String sql="update tickets set status ='" +status+"',subject='" +subject+"',priority='"+priority+"',groupname='" +groupname+"',description='" +description+"' where contact =+ '"+contact+"' ";
		   int check =jdbcTemplate.update(sql);
		   if(check>0)
		   {
			   ModelAndView m = new ModelAndView();
	           m.addObject("message", "Changed Successfull");
	           m.setViewName("ticketset");
	           return m;
		   }
			
		   ModelAndView m = new ModelAndView();
           m.addObject("message", " Not Changed Successfull");
           m.setViewName("ticketset");
           return m;
		}
	@RequestMapping(value ="/user-setting", method = RequestMethod.GET)
    public ModelAndView usersetting(@RequestParam String userchange,@RequestParam String oldone,@RequestParam String newone) throws Exception
		{  
		       //String sql ="update mytables set "+userchange+" = '" +newone+ "' where " +userchange+ " =+ '"+oldone+"' ";  
		       
	   	     String sql ="update mytables set "+userchange+" = '" +oldone+ "' where mailid = +    '"+newone+"' ";
	   	     int check =jdbcTemplate.update(sql);
		     
			   if(check>0)
			   {
				   ModelAndView m = new ModelAndView();
		           m.addObject("message", "Changed Sucessfully");
		           m.setViewName("userset");
		           return m;
			   }
			   else 
			   {
				   ModelAndView m = new ModelAndView();
		           m.addObject("message", " Not Changed Sucessfully");
		           m.setViewName("userset");
		           return m;
			   }
		}
	@RequestMapping(value ="/ticket-setting", method = RequestMethod.GET)
    public ModelAndView ticketfields(@RequestParam String userchange) throws Exception
		{ 
		    String sql ="alter table tickets add "+userchange+" varchar(10)";	
		   
		    int check =jdbcTemplate.update(sql);
		    //boolean  n =st.execute(sql);
		 
		    if(check > 0)
		    {
		    	ModelAndView m = new ModelAndView();
		           m.addObject("message", "Not Sucessfull");
		           m.setViewName("ticketset");
		           return m;
		    }
		    else
		    { 
		      	  ModelAndView m = new ModelAndView();
		           m.addObject("message", "Sucessfully added");
		           m.setViewName("ticketset");
		           return m;	
		    }
		}
	@RequestMapping(value ="/ticket-setting-db", method = RequestMethod.GET)
    public ModelAndView ticketfieldsdb(@RequestParam String userchange,@RequestParam String data,@RequestParam String to) throws Exception
		{
		     String sql ="update tickets set "+userchange+" = '" +data+ "' where contact = +    '"+to+"' ";
		  
		     int check =jdbcTemplate.update(sql);
		     //int inserted = st.executeUpdate(sql);	
		     if(check > 0)
		     {
		    	 ModelAndView m = new ModelAndView();
		           m.addObject("message", "Changed Successfully");
		           m.setViewName("ticketset");
		           return m;
		     }
		     else
		     {
		    	 ModelAndView m = new ModelAndView();
		           m.addObject("message", " Not Sucessfull");
		           m.setViewName("ticketset");
		           return m;
		     }
		}
	@RequestMapping(value ="/contact-setting", method = RequestMethod.GET)
	public ModelAndView contactfields(@RequestParam String userchange) throws Exception
		{  
		    String sql ="alter table contacts add "+userchange+" varchar(10)";	
		    int check =jdbcTemplate.update(sql);
		    //boolean  n =st.execute(sql);
		    if(check > 0)
		    {
		    	
		       ModelAndView m = new ModelAndView();
	           m.addObject("message", " Not Added Sucessfully");
	           m.setViewName("contactset");
	           return m;
		    	
		   
		    }
		    else
		    {
		      ModelAndView m = new ModelAndView();
	           m.addObject("message", " Added Sucessfully");
	           m.setViewName("contactset");
	           return m;
		    }
		}
    @RequestMapping(value ="/contact-setting-db", method = RequestMethod.GET)
	public ModelAndView contactfieldsdb(@RequestParam String userchange,@RequestParam String data,@RequestParam String to) throws Exception
	{
		     String sql ="update contacts set "+userchange+" = '" +data+ "' where contact = +    '"+to+"' ";
		     
		     
		     int check =jdbcTemplate.update(sql);
		    // int inserted = st.executeUpdate(sql);	
		     if(check > 0)
		     {
			       ModelAndView m = new ModelAndView();
		           m.addObject("message", "Added Sucessfully");
		           m.setViewName("contactset");
		           return m;
		     }
		     if(check == 0)
		     {
			       ModelAndView m = new ModelAndView();
		           m.addObject("message", "Not Added Sucessfully Check Contact and values");
		           m.setViewName("contactset");
		           return m;
		     }
		     else
		     {
		    	 ModelAndView m = new ModelAndView();
		           m.addObject("message", "NOT ADDED SUCESSFULLY Check Contact and values");
		           m.setViewName("contactset");
		           return m;
			 
		     }
		}
	@RequestMapping(value ="/user-setting-delete", method = RequestMethod.GET)
    public ModelAndView contactfieldsdb(@RequestParam String mailid) throws Exception
		{
		
		   String sql="delete from mytables where mailid=+'"+mailid+"' ";  
		   int check =jdbcTemplate.update(sql);
		   //int n=st.executeUpdate(sql);
		   if (check>0)
		   {

		       ModelAndView m = new ModelAndView();
	           m.addObject("vimal", "Removed Sucessfully");
	           m.setViewName("Vimal");
	           return m;
		   }
		    else
		    {
			       ModelAndView m = new ModelAndView();
		           m.addObject("message", "Not Removed Sucessfully Check Mailid");
		           m.setViewName("userset");
		           return m;
		    }  
		}
	@RequestMapping(value ="/ticket-setting-delete", method = RequestMethod.GET)
	public ModelAndView ticdktdelete(@RequestParam String tickets) throws Exception
	{
	 		  
		  String sql="delete from tickets where tickets=+'"+tickets+"' ";  
		  int check =jdbcTemplate.update(sql);
		 // int n=st.executeUpdate(sql);
		  if (check>0)
		   {
			  ModelAndView m = new ModelAndView();
	           m.addObject("vimal", "Tickets deleted Sucessfully");
	           m.setViewName("FILTER");
			   return m;
		    	
		   }
		  else
		  {
			   ModelAndView m = new ModelAndView();
	           m.addObject("murali", "Tickets Not Deleted --check the tickets");
	           m.setViewName("FILTER");
			   return m;
		  }
		  
	 		   /*String sql ="update tickets set subject = NULL  where ticekts = +  '"+tickets+"' ";
	 		 
	 		   String sql2="update tickets set status = 'open' where tickets = +    '"+tickets+"' "; 		
	 		   String sql3="update tickets set priority = NULL where tickets = +    '"+tickets+"' ";
	 		   String sql4="update tickets set groupname = NULL where tickets = +    '"+tickets+"' ";
	 		
	 		   String sql6="update tickets set description = NULL where tickets = +    '"+tickets+"' ";
	 		  
	 		   int n=st.executeUpdate(sql);
	 		   int m=st.executeUpdate(sql2);
	 		   int e=st.executeUpdate(sql3);
	 		   int f=st.executeUpdate(sql4);
	 		
	 	       int h=st.executeUpdate(sql6);
	 		   if (n>0)
	 		   {
	 		    	return "Removed the allocated task";
	 		   }
	 		   else
	 		   {
	 		    	return "Not Removed";
	 		   }*/ 
	 	}
	@RequestMapping(value ="/contact-setting-delete", method = RequestMethod.GET)
	public ModelAndView contactdelete(@RequestParam String contact) throws Exception
	   {
		   String sql="delete from contacts where contact=+'"+contact+"' ";  
		   int check =jdbcTemplate.update(sql);
		   //int n=st.executeUpdate(sql);
		   if (check>0)
		   {

		       ModelAndView m = new ModelAndView();
	           m.addObject("message", "Removed Sucessfully");
	           m.setViewName("contactset");
	           return m;
		   }
		   else
		   {
		       ModelAndView m = new ModelAndView();
	           m.addObject("message", "Not Removed Sucessfully Check The Contact");
	           m.setViewName("contactset");
	           return m;
		   }  
     }
	
	@RequestMapping(value ="/mc", method = RequestMethod.GET)
	public ModelAndView filte(@RequestParam String tickets) throws Exception
		{
	    
		 String k = "SELECT tickets FROM tickets WHERE tickets=?";

		 List<String> check = jdbcTemplate.query(k,new Object[] { tickets } ,BeanPropertyRowMapper.newInstance(String.class));
	     
		 int  c = check.size();
		 /*String k = "select tickets from tickets where tickets= +'"+tickets+"' ";
	     
	     ResultSet rm =st.executeQuery(k);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 if(c>0)
		 {
			 System.out.println("murali");
			 List <Filter>j = new ArrayList<>();
			 String Sql = "SELECT  contact,subject,status,priority,groupname,assignedto,description,tickets FROM tickets WHERE tickets=?";  
			
			 List<Filter> checkd = jdbcTemplate.query(Sql,new Object[] { tickets } ,BeanPropertyRowMapper.newInstance(Filter.class));
			 j.addAll(checkd);
			   /*String Sql = "select contact,subject,status,priority,groupname,assignedto,description,tickets from tickets where tickets= +'"+tickets+"' ";
			    List <Filter>j = new ArrayList<>();
			    ResultSet rs =st.executeQuery(Sql);
			    while(rs.next())
			    {
			    	Filter f =new Filter(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));	
			    	j.add(f);
			    	break;
			    }*/
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal",j);
	           m.addObject("v",tickets);
	           m.setViewName("Change");
	   		   return m;			 	
		 }
		 else
		 {
			 ModelAndView s = new ModelAndView();
			 String a = tickets +"Not available...Check The Tickets...TIC";
	         s.addObject("v", a);
	         s.setViewName("Table");
	         return s;	
		 }
		 
		}
	@RequestMapping(value ="/yl", method = RequestMethod.GET)
	public ModelAndView CChangej(@RequestParam String contact) throws Exception
    {
		String o = "SELECT contact FROM contacts WHERE contact=?";


List<String> check = jdbcTemplate.query(o,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(String.class));
		
int c =check.size();
		/*String o = "select contact from contacts where contact= +'"+contact+"' ";
	     ResultSet rm =st.executeQuery(o);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 if(c>0)
		 {
			 List<Vimalraj>k =new ArrayList<>(); 
			 String Sql = "SELECT contact,company,mailid,phoneno,facebook,twitter FROM contacts WHERE contact=?";
			 List<Vimalraj> checkd = jdbcTemplate.query(Sql,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(Vimalraj.class));
			 k.addAll(checkd);
			 
			/*String Sql = "select contact,company,mailid,phoneno,facebook,twitter from contacts where contact= +'"+contact+"' ";
	       List<Vimalraj>k =new ArrayList<>(); 
	       ResultSet rs =st.executeQuery(Sql);
	       while(rs.next())
		    {
		    	Vimalraj f =new Vimalraj(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));	
		    	k.add(f);
		    	break;
		    }*/
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", k);
	           m.setViewName("CCChange");
	   		   return m;
		 }
		 else
		 {
			 ModelAndView s = new ModelAndView();
			 String a = contact +"Not available...Check The Contact...";
	         s.addObject("b", a);
	         s.setViewName("ConatctTable");
	         return s;	
		 }	    
    }
	@RequestMapping(value ="/mp", method = RequestMethod.GET)
	public ModelAndView filt(@RequestParam String tickets) throws Exception
		{

		 String k = "SELECT tickets FROM tickets WHERE tickets=?";
		 List<String> check = jdbcTemplate.query(k,new Object[] { tickets } ,BeanPropertyRowMapper.newInstance(String.class));
		
		 int c = check.size();
		 
	     /*String k = "select tickets from tickets where tickets= +'"+tickets+"' ";
	     ResultSet rm =st.executeQuery(k);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 if(c > 0)
		 { 
			  System.out.println("murali");
			  List <Filter>j = new ArrayList<>();
			  String Sql= "SELECT contact,subject,status,priority,groupname,assignedto,description,tickets FROM tickets WHERE tickets=?";
			  
			  List<Filter> checkd = jdbcTemplate.query(Sql,new Object[] { tickets } ,BeanPropertyRowMapper.newInstance(Filter.class));
			  j.addAll(checkd);
			  
			   /*String Sql = "select contact,subject,status,priority,groupname,assignedto,description,tickets from tickets where tickets= +'"+tickets+"' ";
			    List <Filter>j = new ArrayList<>();
			    ResultSet rs =st.executeQuery(Sql);
			    while(rs.next())
			    {
			    	Filter f =new Filter(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));	
			    	j.add(f);
			    	break;
			    }*/
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal",j);
	           m.addObject("v",tickets);
	           m.setViewName("Change");
	   		   return m;			 	
		 }
		 else
		 {
			 ModelAndView s = new ModelAndView();
			 String a = tickets +"Not available...Check The Tickets...TIC";
	         s.addObject("message", a);
	         s.setViewName("display");
	         return s;	
		 }
	}
	@RequestMapping(value ="/ypp", method = RequestMethod.GET)
	public ModelAndView CChangelj(@RequestParam String contact) throws Exception
    {
		String o = "SELECT contact FROM contacts WHERE contact=?";

       List<Vimalraj> check = jdbcTemplate.query(o,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(Vimalraj.class));
		
       int c =check.size();
		/*String o = "select contact from contacts where contact= +'"+contact+"' ";
	     ResultSet rm =st.executeQuery(o);    
	     String p ="";
		 while(rm.next())
	     {
		        p = rm.getString(1);
		    	break;
	     }*/
		 if(c > 0)
		 {
			 List<Vimalraj>k =new ArrayList<>(); 
			 String Sql = "SELECT contact,company,mailid,phoneno,facebook,twitter FROM contacts WHERE contact=?";

        List<Vimalraj> checkd = jdbcTemplate.query(Sql,new Object[] { contact } ,BeanPropertyRowMapper.newInstance(Vimalraj.class));
			  
          k.addAll(checkd);
	     
          /*String Sql = "select contact,company,mailid,phoneno,facebook,twitter from contacts where contact= +'"+contact+"' ";
	       List<Vimalraj>k =new ArrayList<>(); 
	       ResultSet rs =st.executeQuery(Sql);
	       while(rs.next())
		    {
		    	Vimalraj f =new Vimalraj(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));	
		    	k.add(f);
		    	break;
		    }*/
	 		   ModelAndView m = new ModelAndView();
	           m.addObject("vimal", k);
	           m.setViewName("CCChange");
	   		   return m;
		 }
		 else
		 {
			 ModelAndView s = new ModelAndView();
			 String a = contact +"Not available...Check The Contact...";
	         s.addObject("message", a);
	         s.setViewName("display");
	         return s;	
		 }	    
    }
	@RequestMapping(value ="/upload", method = RequestMethod.POST)
	public ModelAndView fileUpload(@RequestParam String name,@RequestParam String subject,@RequestParam String severity,@RequestParam String category,@RequestParam String region,@RequestParam String escalate,@RequestParam String department,@RequestParam String too,@RequestParam String description,@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) 
	{
		
		Tooling tool= new Tooling(name,subject,severity,category,region,escalate,department,too,description);
		
		if (file.isEmpty())
		{
			return new ModelAndView("display", "message", "Please select a file and try again ......details not saved");
		}

		try {
		
			byte[] bytes = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}
       
		toolservice.save(tool);	
		return new ModelAndView("display", "message", "File Uploaded sucessfully...saved");
		
	}
	@RequestMapping(value ="logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		 session.removeAttribute("mails");
		
		 ModelAndView m = new ModelAndView("Vimal");
		 
         return m;
     
	}
	
	
}
