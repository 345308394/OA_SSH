package com.shop.business.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shop.business.pojo.Product;

public class ProductListAction extends ActionSupport{
	
	public  String  execute() {
		
		Configuration configuration=new Configuration();
		configuration.configure("/hibernate.cfg.xml");
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query query=session.createQuery("from Product");
		
		List<Product> productList=query.list();
		
		ActionContext context=ActionContext.getContext();
		
		context.getSession().put("productList", productList);
		
		transaction.commit();
		session.close();
		
//		for(Product product:productList)
//		{
//			System.out.println(product.getProductDec());
//		}
		
		return SUCCESS;
		
	}

}
