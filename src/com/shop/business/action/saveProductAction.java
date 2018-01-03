package com.shop.business.action;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shop.business.pojo.Product;
import com.shop.business.pojo.User;

public class saveProductAction extends ActionSupport{
	
	private Product product;

	public Product getProduct() {
		
		return product;
	}

	public void setProduct(Product product) {
		
		product.setPubTime(new Date());
		
		this.product = product;
	}
	
	
	
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

}
