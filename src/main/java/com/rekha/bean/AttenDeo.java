package com.rekha.bean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AttenDeo {
	  public static Connection getConnection() {
	      Connection con = null;

	      try {
	         Class.forName("oracle.jdbc.OracleDriver");
	         con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
	         System.out.println("Connection created");
	      } catch (Exception e) {
	         System.out.println(e);
	         System.out.println("Connection not created");
	      }

	      return con;
	   }
	  
	public static int save(Atten a){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps = con.prepareStatement("insert into attendance(stu_id,stu_name,branch,sub1,sub2,sub3,sub4,percentage) values(?,?,?,?,?,?,?,?)");  
	        ps.setString(1,a.getStu_id());  
	        ps.setString(2,a.getStu_name()); 
	        ps.setString(3,a.getBranch());
	        ps.setInt(4,a.getSub1()); 
	        ps.setInt(5,a.getSub2());
	        ps.setInt(6,a.getSub3());
	        ps.setInt(7,a.getSub4());
	        ps.setFloat(8,a.getPer());
	        
	       
	     
	        status=ps.executeUpdate();  
	        
	        ps = con.prepareStatement("commit");
	        ps.executeUpdate();
	        con.close();
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return status;  
	}  
	
	public static List<Atten> getAllRecords() {
	      ArrayList list = new ArrayList();

	      try {
	         Connection con = getConnection();
	         PreparedStatement ps = con.prepareStatement("select * from attendance");
	         ResultSet rs = ps.executeQuery();

	         while(rs.next()) {
	            Atten f = new Atten();
	            f.setStu_id(rs.getString("stu_id"));
	            f.setStu_name(rs.getString("stu_name"));
	            f.setBranch(rs.getString("branch"));
	            f.setSub1(rs.getInt("sub1"));
	            f.setSub1_tot(rs.getInt("sub1_tot"));
	            f.setSub2(rs.getInt("sub2"));
	            f.setSub2_tot(rs.getInt("sub2_tot"));
	            f.setSub3(rs.getInt("sub3"));
	            f.setSub3_tot(rs.getInt("sub3_tot"));
	            f.setSub4(rs.getInt("sub4"));
	            f.setSub4_tot(rs.getInt("sub4_tot"));
	           
	            f.setPer(rs.getFloat("percentage"));
	            
	            list.add(f);
	         }
	      } catch (Exception e) {
	         System.out.println(e);
	      }

	      return list;
	   }	
  
	

	public static Atten getRecordById(int stu_id) {
	      Atten a = null;

	      try {
	         Connection con = getConnection();
	         PreparedStatement ps = con.prepareStatement("select * from attendance where stu_id=?");
	         ps.setInt(1, stu_id);
	         ResultSet rs = ps.executeQuery();

	         while(rs.next()) {
	            a = new Atten();
	            a.setStu_id(rs.getString("stu_id"));
	            a.setStu_name(rs.getString("stu_name"));
	            a.setBranch(rs.getString("branch"));
	            a.setSub1(rs.getInt("sub1"));
	          
	            a.setSub2(rs.getInt("sub2"));
	          
	            a.setSub3(rs.getInt("sub3"));
	          
	            a.setSub4(rs.getInt("sub4"));
	           
	           
	            a.setPer(rs.getFloat("percentage"));
	            
	         }
	      } catch (Exception e) {
	         System.out.println(e);
	      }

	      return a;
	   }
	
	
	   public static int update(Atten a) {
		      int status = 0;

		      try {
		         Connection con = getConnection();
		         PreparedStatement ps = con.prepareStatement("update attendance set stu_name=?,branch=?,sub1=?,sub2=?,sub3=?,sub4=? where stu_id=?");
		         ps.setString(1,a.getStu_name());  
		         ps.setString(2,a.getBranch());  
			     ps.setInt(3,a.getSub1()); 
			     ps.setInt(4,a.getSub2());
			     ps.setInt(5,a.getSub3());
			     ps.setInt(6,a.getSub4());
		         ps.setString(7, a.getStu_id());
		         status = ps.executeUpdate();
		      } catch (Exception e) {
		         System.out.println(e);
		      }

		      return status;
		   }
	   public static int delete(Atten u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();
		        PreparedStatement ps=con.prepareStatement("delete from attendance where stu_id=?");  
		        ps.setString(1,u.getStu_id());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;
	   }
	   
	   public static Atten getRecordByName(String stu_name){  
		    Atten u=new Atten();  
		    try{  
		        Connection con=getConnection(); 
		        PreparedStatement ps=con.prepareStatement("select * from attendance where stu_name=?");  
		        ps.setString(1,stu_name);
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
	   
	  
}
