package com.niit.shoppingCart.dao;

import java.util.List;


import com.niit.shoppingCart.model.Supplier;

public interface SupplierDAO 
{
public void addSupplier(Supplier supplier);
public Supplier getSupplier(String Id);
public void delete(String id);
public List<Supplier> list();
public Supplier getByName(String name);
}
