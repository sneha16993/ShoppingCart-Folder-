package com.niit.shoppingCart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.Supplier;

@Repository("supplierDAO")
@EnableTransactionManagement
public class SupplierDAOImpl implements SupplierDAO
{
 @Autowired
 private SessionFactory sessionFactory;
 
 public SupplierDAOImpl(SessionFactory sessionFactory)
 {
	 this.sessionFactory=sessionFactory;
 }
 @Transactional
 public void addSupplier(Supplier supplier)
 {
	 sessionFactory.getCurrentSession().saveOrUpdate(supplier);
 }
 @Transactional
	public void delete(String id)
	{
		Supplier supplier=new Supplier();
		supplier.setSid(id);
		sessionFactory.getCurrentSession().delete(supplier);
	}
 @Transactional
 public Supplier getSupplier(String id)
 {
 	String hql="from Supplier where sid="+"'"+id+"'";
 	@SuppressWarnings("deprecation")
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
 	@SuppressWarnings("unchecked")
		List<Supplier> list=(List<Supplier>) query.list();
		if(list!=null&& !list.isEmpty())
		{
			return list.get(0);
		}
		return null;
 }
 @Transactional
	public Supplier getByName(String name)
	{
		try {
			String hql="from Supplier where sname="+"'"+ name +"'";
			@SuppressWarnings("rawtypes")
			Query query=sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Supplier> list= query.list();
			
				return list.get(0);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
	}
	
	@SuppressWarnings("deprecation")
	@Transactional
	public List<Supplier> list()
	{
		@SuppressWarnings("unchecked")
		List<Supplier> list= (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
				
	}
}
