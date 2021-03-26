package com.nikhil.truyum.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nikhil.truyum.entity.User;
@Component
public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user =new User();
		user.setUs_id(rs.getInt(1));
		user.setUs_name(rs.getString(2));
		user.setFirstname(rs.getString(3));
		user.setLastname(rs.getString(4));
		user.setPassword(rs.getString(5));
		user.setRole(rs.getString(6));
		return user;
	}

}
