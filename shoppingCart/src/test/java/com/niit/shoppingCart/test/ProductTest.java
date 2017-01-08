package com.niit.shoppingCart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.model.Product;

public class ProductTest 
{
	public static void main(String[] args) 
	{
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.shoppingCart");
	context.refresh();
	ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
	Product product =(Product) context.getBean("product");
	
	
	product.setPid("123");
	product.setPname("Curtains");
	product.setPdesc("Red Curtains");
	product.setPprice(3465);
	
	productDAO.addProduct(product);
	//ProductDAO.delete("123");
}
}
