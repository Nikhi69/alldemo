package com.nikhil.truyum.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;


import com.nikhil.truyum.dao.FavoriteDaoImpl;
import com.nikhil.truyum.dao.LoginValidtion;
import com.nikhil.truyum.dao.MovieDao;
import com.nikhil.truyum.dao.NoFavoriteException;
import com.nikhil.truyum.entity.MovieData;

@Controller
@SessionAttributes("uname")
public class MenuController {
	
	@Autowired
	MovieDao moviedao;
	
	@Autowired
	FavoriteDaoImpl favt;
	
	@Autowired
	LoginValidtion login;
	
	@RequestMapping("/home")
	public String viewHome(ModelMap model) {
		List<MovieData> list = moviedao.getMovieListAdmin();
		model.put("list", list);
		return "home";
	}
	
	@RequestMapping("/adminlist")
	public String viewAdmin(ModelMap model) {
		List<MovieData> list = moviedao.getMovieListAdmin();
		model.put("list", list);
		return "movielistAdmin";
	}
	

	
	@CrossOrigin
	@GetMapping("/adminlistjson")
	@ResponseBody
	public List<MovieData> getMovieListjson() {
		List<MovieData> list = moviedao.getMovieListAdmin();
		return list;
	}
	
	
	
	@RequestMapping("/customerlist")
	public String viewCustomer(ModelMap model) {
		List<MovieData> list = moviedao.getMovieListCustomer();
		model.put("list", list);
		return "movielistCustomer";
	}
	
	@RequestMapping(value="/editmovie",method=RequestMethod.GET)
	public String editMenuItem() {
		return "editmovie";
	}
	
	
@RequestMapping(value="/editmovieSuccess",method=RequestMethod.POST)
	public String editMenuSuccess() {
		return "editmovieSuccess";
	}


@RequestMapping(value="/movielistAdmin",method=RequestMethod.GET)
public String movieAdmin(ModelMap model) {
	List<MovieData> list = moviedao.getMovieListAdmin();
	model.put("list", list);
	return "movielistAdmin";
}

@RequestMapping(value="/movielistCustomer",method=RequestMethod.GET)
public String viewCustomer1(ModelMap model) {
	List<MovieData> list = moviedao.getMovieListCustomer();
	model.put("list", list);
	return "movielistCustomer";
}


@RequestMapping(value="/addfavt")
public String addToFavt(ModelMap model,@RequestParam long movie_id) {
	String name= (String) model.get("uname");
	System.out.println(name);
	int uid=login.userid;
	String username=login.uname;
	int us_id=login.getUserId("uname");
	favt.addFavMovie(uid, movie_id);
	List<MovieData> list = moviedao.getMovieListCustomer();
	MovieData movieData = new MovieData();
	for(MovieData  ele:list) {
		if(ele.getId()==movie_id) {
			movieData=ele;
		}
	}
	
	model.put("itemid",movie_id);
	model.put("uname",username);
	model.put("list", list);
	
	return "favtSuccess";
}


@RequestMapping("/viewfavt")
public String viewCart(ModelMap model) throws NoFavoriteException {
	int uid=login.userid;
	List<Integer> list = favt.getAllFavMovies(uid);
	List<MovieData>favtlist=new ArrayList<>();
	double tot=0;
	for(Integer ele:list) {
		List<MovieData> tlist = moviedao.getMovieListCustomer();
	for(MovieData m :tlist) {
	if(m.getId()==ele) {
		favtlist.add(m);
		tot++;
	}
	}
	}
	model.put("list", favtlist);
	model.put("total", tot);
	return "favorite";
}

@RequestMapping("/removeItem")
public String removeFavt(ModelMap model,@RequestParam long movie_id) {
	int uid=login.userid;
	favt.removeMovie(uid, movie_id);
	return "favorite";
	
}

@RequestMapping("/logout")
public String logout(SessionStatus stat) {
	stat.setComplete();
	return "redirect:/login";
}
}
