package com.shop.test;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.shop.business.pojo.Order;
import com.shop.business.pojo.Product;
import com.shop.business.pojo.User;

public class relationShipTest {

	
public static void  main(String [] args) {
	
		User user=new User(2,"王五","123456","女","110@qq.com","无",new Date(),false);
		Product product=new Product(2,"纯真牛奶","类型1",100,11,11,"好喝不贵那是瞎话",new Date(),"上架");
		
		Order order=new Order(1,"1523箱", new Date(), 10000.0, user, product);
		
		Configuration configuration=new Configuration();
		configuration.configure("/hibernate.cfg.xml");
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		//保存
		session.save(order);
		//查询
		Query query=session.createQuery("from Order");
		
		List<Order> ordertList=query.list();
		
		Order order24=(Order) session.get(Order.class, 1);
		//利用order获取customer
		User u=order.getUser();
		Product p=order.getProduct();
		
		System.out.println(u.getPassword()+p.getProductDec());
		
		for(Order order1 : ordertList)
		{
			
			System.out.println(order1.getDate());
			
		
		}
		
		transaction.commit();
		session.close();
		
	}
	
}
