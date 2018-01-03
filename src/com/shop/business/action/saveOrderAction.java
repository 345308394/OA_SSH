package com.shop.business.action;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.business.pojo.Order;
import com.shop.business.pojo.Product;
import com.shop.business.pojo.User;

public class saveOrderAction extends ActionSupport{
	
	//主键id
 	private  Integer id;
 	//订单编号
 	private  String orderNo;
	//下单日期
 	private Date date;
 	//总金额
 	private Double total;
 	//出厂时间
 	private Date subDate;
	
	private Product product;
	private User user;
	
	
	
	
public  String  execute() {
		
		Configuration configuration=new Configuration();
		configuration.configure("/hibernate.cfg.xml");
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.save(product);
		
		transaction.commit();
		session.close();
		
		
		return SUCCESS;
	}


public Integer getId() {
	return id;
}




public void setId(Integer id) {
	this.id = id;
}




public String getOrderNo() {
	return orderNo;
}




public void setOrderNo(String orderNo) {
	this.orderNo = orderNo;
}




public Date getDate() {
	return date;
}




public void setDate(Date date) {
	this.date = date;
}




public Double getTotal() {
	return total;
}




public void setTotal(Double total) {
	this.total = total;
}




public Product getProduct() {
	return product;
}




public void setProduct(Product product) {
	this.product = product;
}




public User getUser() {
	return user;
}




public void setUser(User user) {
	this.user = user;
}



}
