package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDAO {

	public Supplier get(String id);

	public Supplier getByName(String name);

	public boolean saveOrUpdate(Supplier supplier);

	public boolean delete(String id);

	public List<Supplier> list();

}
