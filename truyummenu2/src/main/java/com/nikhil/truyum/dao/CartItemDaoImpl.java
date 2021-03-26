package com.nikhil.truyum.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nikhil.truyum.entity.MenuItem;
@Repository
public class CartItemDaoImpl implements CartDao {

	
	@Autowired
	MenuItemMapper mapper;
	@Autowired
	JdbcTemplate jdbc;
	@Autowired
	CartMapper cartmapper;
	
	@Autowired
	UserMapper usermapper;

	@Override
	public void addCartItem(long userId, long menuItemId) {
		String sql= "insert into cart(ct_us_id,ct_pr_id) values(?,?)";
		int result =jdbc.update(sql,userId,menuItemId);
	}

	@Override
	public List<Integer> getAllCartItems(long userID) {
		

		String sql ="select ct_pr_id from cart where ct_us_id=?";
		List<Integer> list = jdbc.query(sql, cartmapper,userID);
		
		return list;
	}
	
	@Override
	public void removeCartItem(long userId, long menuItemId) {
		
		  String sql="delete from cart where ct_us_id=? and ct_pr_id=?";
		  jdbc.update(sql,userId,menuItemId);
	}

}
