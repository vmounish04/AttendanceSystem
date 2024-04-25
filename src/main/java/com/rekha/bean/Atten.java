package com.rekha.bean;

public class Atten {
	
	private String stu_id;
	private String stu_name;
	private String branch;
	private int sub1;
	private int sub2;
	private int sub3;
	private int sub4;
	private int sub1_tot;
	private int sub2_tot;
	private int sub3_tot;
	private int sub4_tot;
	private float percentage;
	
	
	public String getStu_id()
	{
		return stu_id;
	}
	
	public void setStu_id(String stu_id){
		this.stu_id = stu_id;

	}

	
	public String getStu_name()
	{
		return stu_name;
	}
	
	public void setStu_name(String stu_name){
		this.stu_name = stu_name;
		
	}
	
	public String getBranch()
	{
		return branch;
	}
	
	public void setBranch(String branch){
		this.branch = branch;
		
	}
	
	public int getSub1()
	{
		return sub1;
	}
	
	public void setSub1(int sub1){
		this.sub1 = sub1;
		
	}
	
	public int getSub2()
	{
		return sub2;
	}
	
	public void setSub2(int sub2){
		this.sub2 = sub2;
		
	}
	
	public int getSub3()
	{
		return sub3;
	}
	
	public void setSub3(int sub3){
		this.sub3 = sub3;
		
	}
	public int getSub4()
	{
		return sub4;
	}
	
	public void setSub4(int sub4){
		this.sub4 = sub4;
		
	}

	
	public void setSub1_tot(int sub1_tot)
	{
		 this.sub1_tot = sub1_tot;
	}
	
	public int getSub1_tot()
	{
		return sub1_tot;
	}
	
	public void setSub2_tot(int sub2_tot)
	{
		 this.sub2_tot = sub2_tot;
	}
	
	public int getSub2_tot()
	{
		return sub2_tot;
	}
	
	public void setSub3_tot(int sub3_tot)
	{
		 this.sub3_tot = sub3_tot;
	}
	
	public int getSub3_tot()
	{
		return sub3_tot;
	}
	public void setSub4_tot(int sub4_tot)
	{
		 this.sub4_tot = sub4_tot;
	}
	
	public int getSub4_tot()
	{
		return sub4_tot;
	}
	
	public void setPer(float percentage)
	{

		this.percentage=percentage;
		
	}
	
	public float getPer()
	{
	this.percentage= sub1 + sub2 + sub3 + sub4; 
	this.percentage/=200; // 50 + 50 + 50 + 50
	this.percentage*=100;
		return this.percentage;
	}
}
