package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Supplier;

public interface SupplierDAO {

	public Supplier get(String id);

	public void saveOrUpdate(Supplier supplier);

	public void delete(String id);

	public List<Supplier> list();
}
