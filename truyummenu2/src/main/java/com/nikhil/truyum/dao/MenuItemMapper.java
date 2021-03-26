package com.nikhil.truyum.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nikhil.truyum.entity.MenuItem;

@Component
public class MenuItemMapper implements RowMapper<MenuItem> {
	@Override
	public MenuItem mapRow(ResultSet rs, int rowNum) throws SQLException {
		MenuItem menuItem = new MenuItem();
		menuItem.setId(rs.getInt(1));
		menuItem.setName(rs.getString(2));
		menuItem.setPrice(rs.getFloat(3));
		menuItem.setActive(rs.getString(4));
		menuItem.setDateOfLaunch(rs.getDate(5));
		menuItem.setCategory(rs.getString(6));
		menuItem.setFreeDelivery(rs.getString(7));
		menuItem.setUrl(rs.getString(8));
		return menuItem;

	}
}
