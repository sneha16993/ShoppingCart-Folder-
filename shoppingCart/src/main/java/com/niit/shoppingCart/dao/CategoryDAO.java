package com.niit.shoppingCart.dao;

import java.util.List;
import com.niit.shoppingCart.model.Category;

public interface CategoryDAO 
{
	public void addCategory(Category category);
	public Category getCategory(String Id);
	public void delete(String id);
	public List<Category> list();
	public Category getByName(String name);
}
