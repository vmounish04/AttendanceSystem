package com.manju.bean;
import com.rekha.bean.*;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
import java.lang.invoke.*;
import com.manju.bean.ConnectionProvider;
import com.manju.bean.LoginBean;
import com.rekha.bean.Atten; 

public class UserDao { 
 

	  
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	  
	        Class.forName("oracle.jdbc.OracleDriver");  
	        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system"); 
	        System.out.print("connection created");
	    }catch(Exception e){
	    	System.out.println(e);
	    	System.out.println("not connected");}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into student1(student_id,sfname,slname,password,gender,email,contact,dob,address,branch) values(?,?,?,?,?,?,?,?,?,?)");  
	        ps.setInt(1,u.getid());
	        ps.setString(2,u.getsfname());  
	        ps.setString(3,u.getslname());  
	        ps.setString(4,u.getpwd());  
	        ps.setString(5,u.getgender());  
	        ps.setString(6,u.getemail());
	        ps.setString(7,u.getph());
	        ps.setString(8,u.getdob());
	        ps.setString(9,u.getaddress());
	        ps.setString(10,u.getbranch());
	        
	        status=ps.executeUpdate();
	       
	        ps=con.prepareStatement("insert into student_db(email,password,id) values(?,?,?)");
	       
	        ps.setString(1,u.getemail());  
	        ps.setString(2,u.getpwd()); 
	        ps.setInt(3,u.getid()); 
	        
	        ps.executeUpdate();
	        
	        ps=con.prepareStatement("commit");
	        ps.executeUpdate();  
	        con.close();
	        
	        
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update student1 set sfname=?,slname=?,password=?,gender=?,email=?,contact=?,dob=?,address=?,branch=?  where student_id=?");  
	        ps.setString(1,u.getsfname());  
	        ps.setString(2,u.getslname());  
	        ps.setString(3,u.getpwd());  
	        ps.setString(4,u.getgender());  
	        ps.setString(5,u.getemail());  
	        ps.setString(6,u.getph());
	        ps.setString(7,u.getdob());
	        ps.setString(8,u.getaddress());
	        ps.setString(9,u.getbranch());
	        ps.setInt(10,u.getid());
	        status=ps.executeUpdate(); 
	    
	        
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from student1 where student_id=?");  
	        ps.setInt(1,u.getid());  
	        status=ps.executeUpdate();  
	        
	        ps=con.prepareStatement("delete from student_db where id=?");  
	        ps.setInt(1,u.getid());  
	        status=ps.executeUpdate(); 
	        
	        ps=con.prepareStatement("delete from attendance where stu_id=?");  
	        ps.setInt(1,u.getid());  
	        status=ps.executeUpdate(); 
	        
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student1");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setid(rs.getInt("student_id"));  
	            u.setsfname(rs.getString("sfname"));
	            u.setslname(rs.getString("slname"));
	            u.setpwd(rs.getString("password"));  
	            u.setgender(rs.getString("gender"));  
	            u.setemail(rs.getString("email"));  
	            u.setph(rs.getString("contact"));  
	            u.setdob(rs.getString("dob")); 
	            u.setaddress(rs.getString("address")); 
	            u.setbranch(rs.getString("branch")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student1 where student_id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setid(rs.getInt("student_id"));  
	            u.setsfname(rs.getString("sfname"));
	            u.setslname(rs.getString("slname"));
	            u.setpwd(rs.getString("password"));  
	            u.setgender(rs.getString("gender"));  
	            u.setemail(rs.getString("email"));  
	            u.setph(rs.getString("contact")); 
	            u.setdob(rs.getString("dob")); 
	            u.setaddress(rs.getString("address")); 
	            u.setbranch(rs.getString("branch"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	
	public static User getRecordByName(String sfname){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student1 where sfname=?");  
	        ps.setString(1,sfname);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setid(rs.getInt("student_id"));  
	            u.setsfname(rs.getString("sfname"));
	            u.setslname(rs.getString("slname"));
	            u.setpwd(rs.getString("password"));  
	            u.setgender(rs.getString("gender"));  
	            u.setemail(rs.getString("email"));  
	            u.setph(rs.getString("contact")); 
	            u.setdob(rs.getString("dob")); 
	            u.setaddress(rs.getString("address")); 
	            u.setbranch(rs.getString("branch"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  

	
	   public static Atten getRecordByStuAtt(String name){    // this is from Atten package ,and for displaying student attendance 
		    Atten u =new Atten();  
		    try{  
		        Connection con=getConnection(); 
		        PreparedStatement ps=con.prepareStatement("select * from attendance where stu_name=?");  
		        ps.setString(1,name);
		        ResultSet rs=ps.executeQuery();  
		        
		      
		        while(rs.next()){  
		             
		            u.setStu_id(rs.getString("stu_id"));
		            u.setStu_name(rs.getString("stu_name"));
		            u.setBranch(rs.getString("branch"));
		            u.setSub1(rs.getInt("sub1"));
		            u.setSub1_tot(rs.getInt("sub1_tot"));  
		            u.setSub2(rs.getInt("sub2"));  
		            u.setSub2_tot(rs.getInt("sub2_tot"));  
		            u.setSub3(rs.getInt("sub3")); 
		            u.setSub3_tot(rs.getInt("sub3_tot")); 
		            u.setSub4(rs.getInt("sub4")); 
		            u.setSub4_tot(rs.getInt("sub4_tot"));
		            u.setPer(rs.getFloat("percentage"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}
	
	   public static boolean validatestu(LoginBean stu){  
		   boolean status=false;  
		   try{  
		   Connection con=ConnectionProvider.getCon();  

		   System.out.println("Connected");
		                 
		   PreparedStatement ps=con.prepareStatement("select * from student_db where email=? and password=?");  
		     
		   ps.setString(1,stu.getEmail());  
		   ps.setString(2, stu.getPass());  
		                 
		   ResultSet rs = ps.executeQuery();  
		   status=rs.next();  
		   System.out.println("Pass");
		                 
		   }catch(Exception e){}  
		     
		   return status;  
		     
		   } 
	

	  
	

	
	} 
	
