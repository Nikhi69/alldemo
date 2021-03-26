package com.nikhil.truyum.dao;

import java.util.List;

import com.nikhil.truyum.entity.MenuItem;

public interface MenuItemDao {
	

	List<MenuItem> getMenuItemListCustomer();

	void modifyMenuItem(MenuItem menuItem);
	//List<MenuItem>  editmenu(long id);
	
	List<MenuItem> getMenuItemListAdmin();
}
