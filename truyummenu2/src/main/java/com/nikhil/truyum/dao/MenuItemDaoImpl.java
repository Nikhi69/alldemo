package com.nikhil.truyum.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.nikhil.truyum.entity.MenuItem;

@Repository
public class MenuItemDaoImpl implements MenuItemDao {
	List<MenuItem> menuList = new ArrayList<>();
	@Autowired
	MenuItemMapper mapper;
	@Autowired
	JdbcTemplate jdbc;

	@Override
	public List<MenuItem> getMenuItemListAdmin() {

		String sql = "select * from menu_item";
		List<MenuItem> list = jdbc.query(sql, mapper);

		return list;

	}

	@Override
	public List<MenuItem> getMenuItemListCustomer() {
		List<MenuItem> customerList = new ArrayList<>();

		String sql = "select * from menu_item";
		List<MenuItem> list = jdbc.query(sql, mapper);
		for (MenuItem ele : list) {
			if (ele.getActive().equalsIgnoreCase("Yes") && ele.getDateOfLaunch().before(new Date())) {
				customerList.add(ele);
			}
		}
		return customerList;
	}

	

	
	@Override
	public void modifyMenuItem(MenuItem menuItem) {
		menuList.remove(menuItem);
		menuList.add(menuItem);
	}

}
