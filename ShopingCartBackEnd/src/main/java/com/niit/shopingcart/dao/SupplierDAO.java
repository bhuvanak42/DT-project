package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Supplier;

public interface SupplierDAO {

	public boolean save(Supplier supplier);

	public boolean update(Supplier supplier);

	public boolean saveOrUpdate(Supplier supplier);

	public boolean delete(String id);

	public Supplier get(String id);

	public List<Supplier> list();

}
