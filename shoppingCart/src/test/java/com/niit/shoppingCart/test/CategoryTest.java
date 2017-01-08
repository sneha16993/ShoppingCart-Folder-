package com.niit.shoppingCart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.model.Category;


public class CategoryTest 
{
	public static void main(String[] args) 
	{
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.shoppingCart");
	context.refresh();
	CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	Category category =(Category) context.getBean("category");
	
	
	//category.setCid("123");
	//category.setCname("Curtains");
	//category.setCdesc("Red Curtains");
	
	//categoryDAO.addCategory(category);
	//categoryDAO.delete("123");
	//List<Category> list = (List<Category>)categoryDAO.getCategory("123");
	
	//System.out.println(categoryDAO.getCategory("123"));
	List<Category> list= (List<Category>) categoryDAO.getByName("dfgg");
	System.out.println(list.get(0).getCid()+" "+list.get(0).getCname()+" "+list.get(0).getCdesc());
	context.close();
	}	
}
