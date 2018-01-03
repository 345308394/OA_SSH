package com.shop.business.pojo;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class Order extends ActionSupport{
		//主键id
	 	private  Integer id;
	 	//订单编号
	 	private  String orderNo;
	 	//下单日期
	 	private Date date;
	 	//总金额
	 	private Double total;
	 	//Order：User =N：1
	 	private User user;
	 	//Order：Product=N：1
	 	private Product product;
	 	
	 	public Order() {
		}
	 	
	 	public Order(Integer id,String orderNo,Date date,Double total,User user,Product product) {
	 		this.date=date;
	 		this.orderNo=orderNo;
	 		this.product=product;
	 		this.user=user;
	 		this.total=total;
	 		this.id=id;
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
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Product getProduct() {
			return product;
		}
		public void setProduct(Product product) {
			this.product = product;
		}
		public Integer getId() {
			return id;
		}
	 	
	
}
