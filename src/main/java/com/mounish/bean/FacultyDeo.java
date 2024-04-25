package com.mounish.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mounish.bean.ConnectionProvider;
import com.mounish.bean.LoginBean;

public class FacultyDeo {
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

   public static int save(Faculty f) {
      int status = 0; 

      try {
         Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("insert into faculty(fac_id,fac_name,fac_password,fac_gender,fac_dob,fac_dept,fac_contact,fac_gmail) values(?,?,?,?,?,?,?,?)");
         ps.setString(1, f.getId());
         ps.setString(2, f.getName());
         ps.setString(3, f.getPassword());
         ps.setString(4, f.getGender());
         ps.setString(5, f.getDob());
         ps.setString(6, f.getDepart());
         ps.setString(7, f.getContact());
         ps.setString(8, f.getGmail());
         status = ps.executeUpdate();
       
         
         ps = con.prepareStatement("insert into faculty_db(email,password,id) values(?,?,?)");
         ps.setString(1, f.getGmail());
         ps.setString(2, f.getPassword());
         ps.setString(3, f.getId());
         
         ps.executeUpdate();
         
         ps = con.prepareStatement("commit");
         ps.executeUpdate();
         
         con.close();
        
      } catch (Exception e) {
         System.out.println(e);
      }

      return status;
   }

   public static List<Faculty> getAllRecords() {
      ArrayList list = new ArrayList();

      try {
         Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("select * from faculty");
         ResultSet rs = ps.executeQuery();

         while(rs.next()) {
            Faculty f = new Faculty();
            f.setId(rs.getString("fac_id"));
            f.setName(rs.getString("fac_name"));
            f.setPassword(rs.getString("fac_password"));
            f.setGender(rs.getString("fac_gender"));
            f.setDob(rs.getString("fac_dob"));
            f.setDepart(rs.getString("fac_dept"));
            f.setContact(rs.getString("fac_contact"));
            f.setGmail(rs.getString("fac_gmail"));
            list.add(f);
         }
      } catch (Exception e) {
         System.out.println(e);
      }

      return list;
   }

   public static int delete(Faculty f) {
      int status = 0;

      try {
         Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("delete from faculty where fac_id=?");
         ps.setString(1, f.getId());
         status = ps.executeUpdate();
         
         
         ps = con.prepareStatement("delete from faculty_db where id=?");
         ps.setString(1, f.getId());
         status = ps.executeUpdate();
         
         
      } catch (Exception e) {
         System.out.println(e);
      }

      return status;
   }

   public static int update(Faculty u) {
      int status = 0;

      try {
         Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("update faculty set fac_name=?,fac_password=?,fac_gender=?,fac_dob=?,fac_dept=?,fac_contact=?,fac_gmail=? where fac_id=?");
         ps.setString(1, u.getName());
         ps.setString(2, u.getPassword());
         ps.setString(3, u.getGender());
         ps.setString(4, u.getDob());
         ps.setString(5, u.getDepart());
         ps.setString(6, u.getContact());
         ps.setString(7, u.getGmail());
         ps.setString(8, u.getId());
         status = ps.executeUpdate();
      } catch (Exception e) {
         System.out.println(e);
      }

      return status;
   }

   public static Faculty getRecordById(int id) {
      Faculty u = null;

      try {
         Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("select * from faculty where fac_id=?");
         ps.setInt(1, id);
         ResultSet rs = ps.executeQuery();

         while(rs.next()) {
            u = new Faculty();
            u.setId(rs.getString("fac_id"));
            u.setName(rs.getString("fac_name"));
            u.setPassword(rs.getString("fac_password"));
            u.setGender(rs.getString("fac_gender"));
            u.setDob(rs.getString("fac_dob"));
            u.setDepart(rs.getString("fac_dept"));
            u.setContact(rs.getString("fac_contact"));
            u.setGmail(rs.getString("fac_gmail"));
         }
      } catch (Exception e) {
         System.out.println(e);
      }

      return u;
   }
   
   public static Faculty getRecordByName(String name) {
	      Faculty f = null;

	      try {
	         Connection con = getConnection();
	         PreparedStatement ps = con.prepareStatement("select * from faculty where fac_name=?");
	         ps.setString(1, name);
	         ResultSet rs = ps.executeQuery();

	         while(rs.next()) {
	            f = new Faculty();
	            f.setId(rs.getString("fac_id"));
	            f.setName(rs.getString("fac_name"));
	            f.setPassword(rs.getString("fac_password"));
	            f.setGender(rs.getString("fac_gender"));
	            f.setDob(rs.getString("fac_dob"));
	            f.setDepart(rs.getString("fac_dept"));
	            f.setContact(rs.getString("fac_contact"));
	            f.setGmail(rs.getString("fac_gmail"));
	         }
	      } catch (Exception e) {
	         System.out.println(e);
	      }

	      return f;
	   }
   
 
	   
	   public static boolean validate(LoginBean bean){  
	   boolean status=false;  
	   try{  
	   Connection con=ConnectionProvider.getCon();  

	   System.out.println("Connected");
	                 
	   PreparedStatement ps=con.prepareStatement("select * from faculty_db where email=? and password=?");  
	     
	   ps.setString(1,bean.getEmail());  
	   ps.setString(2, bean.getPass());  
	                 
	   ResultSet rs = ps.executeQuery();  
	   status=rs.next();  
	   System.out.println("Pass");
	                 
	   }catch(Exception e){}  
	     
	   return status;  
	     
	   }  
}
