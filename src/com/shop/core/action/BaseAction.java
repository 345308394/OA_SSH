package com.shop.core.action;

import java.lang.reflect.Method;

import com.opensymphony.xwork2.ActionSupport;


//所有的action类都继承此action类
public class BaseAction extends ActionSupport {
	//	基础操作
	private String action ="index";
	//	获取action属性
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
	public String execute() {
		try {
			
			return this.executeMethod(this.getAction());
			
		} catch (Exception e) {
			e.printStackTrace();
			return INPUT;
		}
	}
	
	//	根据UI传递的参数动态调用方法
	private String executeMethod(String method) throws Exception {
		
		Class [] c=null;
		Method m=this.getClass().getMethod(method, c);
		Object [] o=null;
		String result=(String)m.invoke(this, o);
		return result;
		
	}
}
