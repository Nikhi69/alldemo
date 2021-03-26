package com.nikhil.truyum.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nikhil.truyum.dao.CartItemDaoImpl;
import com.nikhil.truyum.dao.LoginValidtion;
import com.nikhil.truyum.dao.MenuItemDaoImpl;
import com.nikhil.truyum.dao.UserMapper;
import com.nikhil.truyum.entity.MenuItem;

@Controller
@SessionAttributes("uname")
public class MenuController {
	@Autowired
	MenuItemDaoImpl menuItemDaoImpl;
	
	@Autowired
	CartItemDaoImpl cartItemDaoImpl;
	
	@Autowired
	LoginValidtion login;
	
	@Autowired
	UserMapper mapper;
	
	
	@RequestMapping("/home")
	public String viewCustomer(ModelMap model) {
		List<MenuItem> list = menuItemDaoImpl.getMenuItemListCustomer();
		model.put("list", list);
		return "Home";
	}
	
	@RequestMapping("/adminboot")
	public String viewAdminn(ModelMap model) {
		List<MenuItem> list = menuItemDaoImpl.getMenuItemListAdmin();
		model.put("list", list);
		return "menuAdmin";
	}
	
	@RequestMapping("/customermenu")
	public String viewCustomerMenu(ModelMap model) {
		List<MenuItem> list = menuItemDaoImpl.getMenuItemListCustomer();
		model.put("list", list);
		return "MenuItemCustomers";
	}
	
	
	@RequestMapping("/admin")
	public String viewAdmin(ModelMap model) {
		List<MenuItem> list = menuItemDaoImpl.getMenuItemListAdmin();
		model.put("list", list);
		return "menuItemListAdmin";
	}
	
	@RequestMapping(value="/editmenu",method=RequestMethod.GET)
	public String editMenuItem() {
		return "editmenu";
	}
	
	
@RequestMapping(value="/editmenuSuccess",method=RequestMethod.POST)
	public String editMenuSuccess() {
		return "editmenuSuccess";
	}
	



//
//@RequestMapping(value="/addcart")
//public String cartSuccess() {
//	return "cartSuccess";String str ="Added Successfully";model.put("message", str);
//}

	
	@RequestMapping(value="/addcart")

	public String addToCart(ModelMap model,@RequestParam long id) {
		String name= (String) model.get("uname");
		System.out.println(name);
		int uid=login.userid;
		String username=login.uname;
		int us_id=login.getUserId("uname");
		cartItemDaoImpl.addCartItem(uid, id);
		List<MenuItem> list = menuItemDaoImpl.getMenuItemListCustomer();
		MenuItem menuItem = new MenuItem();
		for(MenuItem ele:list) {
			if(ele.getId()==id) {
				menuItem=ele;
			}
		}
		
		model.put("itemid",id);
		model.put("uname",username);
		model.put("list", list);
		
		return "cartSuccess";
}

	
	@RequestMapping("/viewcart")
	public String viewCart(ModelMap model) {
		int uid=login.userid;
		List<Integer> list = cartItemDaoImpl.getAllCartItems(uid);
		List<MenuItem>cartlist=new ArrayList<>();
		double tot=0;
		for(Integer ele:list) {
			List<MenuItem> tlist = menuItemDaoImpl.getMenuItemListCustomer();
		for(MenuItem m :tlist) {
		if(m.getId()==ele) {
			cartlist.add(m);
			tot+=m.getPrice();
		}
		}
		}
		model.put("list", cartlist);
		model.put("total", tot);
		return "cart";
	}
	
	
	@RequestMapping("/removeItem")
	public String removeCart(ModelMap model,@RequestParam long id) {
		int uid=login.userid;
		cartItemDaoImpl.removeCartItem(uid, id);
		return "cart";
		
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus stat) {
		stat.setComplete();
		return "redirect:/login";
	}
	

}
