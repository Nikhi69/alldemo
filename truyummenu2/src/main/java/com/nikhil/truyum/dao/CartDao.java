package com.nikhil.truyum.dao;

import java.util.List;

import com.nikhil.truyum.entity.MenuItem;



public interface CartDao {
	public void addCartItem(long userId, long menuItemId);

	public List<Integer> getAllCartItems(long userID);

	public void removeCartItem(long userId, long menuItemId);
}
