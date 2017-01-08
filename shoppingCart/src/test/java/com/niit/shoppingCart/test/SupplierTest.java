package com.niit.shoppingCart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.SupplierDAO;

import com.niit.shoppingCart.model.Supplier;

public class SupplierTest {

	public static void main(String[] args) 
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.shoppingCart");
	context.refresh();
	
	SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	Supplier supplier=(Supplier)context.getBean("supplier");
//	supplier.setSid("123");
//	supplier.setSname("GAURI KHAN");
//	supplier.setSphno("34563");
//	supplier.setSaddr("delhi");
	
	//supplierDAO.addSupplier(supplier);
	List<Supplier> list= (List<Supplier>)supplierDAO.getByName("fhjfh");
	System.out.println(list.get(0).getSid()+"  "+list.get(0).getSname()+" "+list.get(0).getSaddr()+" "+list.get(0).getSphno());
	context.close();
	
	}

}
