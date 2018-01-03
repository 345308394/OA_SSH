package com.shop.test;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.shop.business.pojo.User;



public class UserTest {
	
	public static void  main(String [] args) {
		
		User user=new User(2,"田七","123456","男","110@qq.com","无",new Date(),false);
		Configuration configuration=new Configuration();
		configuration.configure("/hibernate.cfg.xml");
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
		
	}

}
