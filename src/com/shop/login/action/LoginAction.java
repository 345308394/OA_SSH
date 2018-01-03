package com.shop.login.action;

import java.util.Date;

import com.shop.business.pojo.*;
import com.opensymphony.xwork2.ActionContext;
import com.shop.core.action.BaseAction;

public class LoginAction  extends BaseAction{
	//	鑰冨彿
	private String studentNo;
	//鐢ㄦ埛鍚�
	private String userName;
	//	濮撳悕
	private String name;
	//	瀵嗙爜
	private String password;
	//	鐧诲綍鏃堕棿
	private String loginTime;
	//	鐢ㄦ埛service
	
	//	绠＄悊鍛樼櫥褰�
	@SuppressWarnings("unchecked")
	public String login()
	{
		if ("王兆信".equals(userName)&&"123456".equals(password)) {
			
			ActionContext context=ActionContext.getContext();
			Date loginTime=new Date();
			context.getSession().put("LOGIN_TIME", loginTime);
			context.getSession().put("CURRENT_USER", new User(userName,password));
			return SUCCESS;
		}
		return INPUT;
	}
	
	
	public String logout() {
		
		ActionContext context=ActionContext.getContext();
		context.getSession().remove("LOGIN_TIME");
		context.getSession().remove("CURRENT_USER");
		
		return INPUT;
	}
	
	
	
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	
	
	

}
