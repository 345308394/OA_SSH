package com.shop.business.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;
import com.shop.business.pojo.Order;
import com.shop.business.pojo.User;

public class orderListAction {


public  String  execute() {
	
	Configuration configuration=new Configuration();
	configuration.configure("/hibernate.cfg.xml");
	SessionFactory sessionFactory=configuration.buildSessionFactory();
	Session session=sessionFactory.openSession();
	Transaction transaction=session.beginTransaction();
	
	Query query=session.createQuery("from Order");
	
	List<Order> orderList=query.list();
	
//	for(Order o: orderList)
//		{
//			System.out.println(o.getUser().getPassword()+o.getProduct().getProductName());
//		}
	
	ActionContext context=ActionContext.getContext();
	
	context.getSession().put("orderList", orderList);
	
	transaction.commit();
	session.close();
	
	return "success";
	
}
	
}
