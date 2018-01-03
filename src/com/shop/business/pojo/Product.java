package com.shop.business.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Product  implements Serializable{
	//主键id
	private Integer id;
	//产品名称
	private String ProductName;
	//产品类型
	private String ProductType;
	//产品数量
	private int ProductNum;
	//市场价格
	private float MarketPrice;
	//网站价格
	private float WebPrice;
	//产品描述
	private String ProductDec; 
	//出厂时间
	private Date pubTime;
	//是否上架
	private String ProductOn;
	
	
	//构造
	public Product(Integer id,String ProductName,String ProductType,int ProductNum,float MarketPrice,float WebPrice,String ProductDec,Date pubTime,String ProductOn) {
		this.ProductName=ProductName;
		this.MarketPrice=MarketPrice;
		this.ProductDec=ProductDec;
		this.ProductOn=ProductOn;
		this.ProductType=ProductType;
		this.pubTime=pubTime;
		this.WebPrice=WebPrice;
		this.ProductNum=ProductNum;
		this.id=id;
	}
	
	//产品无参构造
	public Product() {
		
	}
	
	
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductType() {
		return ProductType;
	}
	public void setProductType(String productType) {
		ProductType = productType;
	}
	public int getProductNum() {
		return ProductNum;
	}
	public void setProductNum(int productNum) {
		ProductNum = productNum;
	}
	public float getMarketPrice() {
		return MarketPrice;
	}
	public void setMarketPrice(float marketPrice) {
		MarketPrice = marketPrice;
	}
	public float getWebPrice() {
		return WebPrice;
	}
	public void setWebPrice(float webPrice) {
		WebPrice = webPrice;
	}
	public String getProductDec() {
		return ProductDec;
	}
	public void setProductDec(String productDec) {
		ProductDec = productDec;
	}
	public Date getPubTime() {
		return pubTime;
	}
	public void setPubTime(Date pubTime) {
		this.pubTime = pubTime;
	}
	public String isProductOn() {
		return ProductOn;
	}
	public void setProductOn(String productOn) {
		ProductOn = productOn;
	}
	public Integer getId() {
		return id;
	}
	
	
	
	
}
