package com.niit.shoppingCart.dao;

import java.util.List;
import com.niit.shoppingCart.model.Product;



public interface ProductDAO 
{
	public void addProduct(Product product);
	public Product getProduct(String Id);
	public void delete(String id);
	public List<Product> list();
	public Product getByName(String name);
}
