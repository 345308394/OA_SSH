package com.shop.business.pojo;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable{
	
	private Integer id;
	//	用户名
	private String userName;
	//	密码
	private String password;
	//	性别
	private String gender;
	//	邮箱
	private String email;
	//	头像
	private String face;
	//	注册时间
	private Date regTime;
	
	private boolean activeFlag;
	
	
	//无参构造
	public  User() {
		
	}
	
	//	有参构造方法
	public User(String userName,String password) {
		
		this.userName=userName;
		this.password=password;
	}
	
	
	//全部参数构造
	public  User(Integer id,String userName, String password,String gender,String email,String face,Date regTime,boolean activeFlag) {
		this.activeFlag=activeFlag;
		this.email=email;
		this.gender=gender;
		this.password=password;
		this.userName=userName;
		this.face=face;
		this.regTime=regTime;
		this.id=id;
		
	}
	
	
	
	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public Date getRegTime() {
		return regTime;
	}
	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}
	public boolean isActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(boolean activeFlag) {
		this.activeFlag = activeFlag;
	}
	
	

}
