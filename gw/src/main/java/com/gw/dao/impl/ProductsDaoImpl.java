package com.gw.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import com.gw.dao.ProductsDao;
import com.gw.model.Jqpage;
import com.gw.model.Products;
@Repository("productsDao")
public class ProductsDaoImpl extends BaseDaoImpl<Products> implements ProductsDao{

	public List<Products> lastProducts(int num, String producttype) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Criteria criteria=this.getSession().createCriteria(Products.class);
			criteria.setMaxResults(num);
			criteria.add(Expression.eq("Type", producttype));
			criteria.addOrder(Order.desc("id"));
			List<Products> a=criteria.list();
		return a;
	}
	public List<Products> lastProducts(int num) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Criteria criteria=this.getSession().createCriteria(Products.class);
		criteria.setMaxResults(num);
		criteria.addOrder(Order.desc("id"));
		List<Products> a=criteria.list();
		return a;
	}

	public Map<String, Object> getByPage(Jqpage jqpage, String... strings) {
		// TODO Auto-generated method stub
			Criteria criteria=this.getSession().createCriteria(Products.class);
			Map<String, Object> map=new HashMap<String, Object>();
			criteria.add(Expression.eq("Type", strings[0]));
			jqpage.setTotalRecords(criteria.list().size());
				criteria.setFirstResult((jqpage.getPage()-1)*jqpage.getRows());
				criteria.setMaxResults(jqpage.getRows());
				String sort="";
				if(jqpage.getSort()==null){
					sort="id";
				}else{
					sort=jqpage.getSort();
				}
				if(jqpage.getOrder()!=null&&jqpage.getOrder().equals("asc")){
					criteria.addOrder(Order.asc(sort));
				}else{
					criteria.addOrder(Order.desc(sort));
				}
				List<Products> list= criteria.list();
				
			map.put("entity", list);
			map.put("jqpage", jqpage);
			return map;
	}

}
