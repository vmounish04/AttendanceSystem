package com.sulthan.bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.sulthan.bean.ConnectionProvider;
import com.sulthan.bean.LoginBean;
import com.sulthan.bean.userad;
public class UserDaoad {
	public static Connection getConnection()
	{
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println("Connection created");
		}
		catch(Exception e) {
			System.out.println(e);
			System.out.println("Connection Not Created");
		}
		return con;
	}
		public static int save(userad u) {
			int status=0;
			try {
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("insert into admin(admin_id,admin_name,admin_password)values(?,?,?)");
				ps.setInt(1, u.getId());
				ps.setString(2,u.getname());
				ps.setString(3,u.getpassword());
				
				status=ps.executeUpdate();
				
			     ps=con.prepareStatement("insert into admin_db(id,password) values(?,?)");
			        ps.setInt(1,u.getId());  
			        ps.setString(2,u.getpassword()); 
			        
			        ps.executeUpdate();
			}
			catch(Exception e) {
				System.out.println(e);}
			return status;
		}
		public static List<userad> getAllRecords(){  
		    List<userad> list=new ArrayList<userad>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from admin");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            userad u=new userad();  
		            u.setId(rs.getInt("admin_id"));  
		            u.setname(rs.getString("admin_name"));
		            u.setpassword(rs.getString("admin_password"));
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}
		
public static userad getRecordById(int id){  
    userad u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from admin where admin_id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new userad();  
            u.setId(rs.getInt("admin_id"));  
            u.setname(rs.getString("admin_name")); 
            u.setpassword(rs.getString("admin_password")); 
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
public static int update(userad u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update admin set admin_name=?,admin_password=?  where admin_id=?");  
        
        ps.setString(1,u.getname());  
        ps.setString(2,u.getpassword()); 
        ps.setInt(3,u.getId());
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}
public static int delete(userad u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from admin where admin_id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}

public static boolean validate(LoginBean ad){  
	   boolean status=false;  
	   try{  
	   Connection con=ConnectionProvider.getCon();  

	   System.out.println("Connected");
	                 
	   PreparedStatement ps=con.prepareStatement("select * from admin_db where id=? and password=?");  
	     
	   ps.setString(1,ad.getId());  
	   ps.setString(2, ad.getPass());  
	                 
	   ResultSet rs = ps.executeQuery();  
	   status=rs.next();  
	   System.out.println("Pass");
	                 
	   }catch(Exception e){}  
	     
	   return status;  
	     
	   }
}  
