package com.nikhil.truyum.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.truyum.entity.MovieData;
import com.nikhil.truyum.repository.MovieRepository;

@Service
public class MovieService {

	@Autowired
	MovieRepository movieRepository;
	
	@Transactional
	public MovieData get(int id) {
		return movieRepository.findById(id).get();
	}

	@Transactional
	public void save(MovieData movie) {
		movieRepository.save(movie);
	}
	

	@Transactional
	public List<MovieData> getMovieListAdmin(){
		return movieRepository.getMovieListAdmin();
	}
	
	@Transactional
	public List<MovieData> getMovieListCustomer(){
		List<MovieData> movieListCustomer = new ArrayList<>();
		List<MovieData> list = movieRepository.getMovieListCustomer();
		for (MovieData ele : list) {
			if (ele.getActive().equalsIgnoreCase("Yes") && ele.getDateoflaunch().before(new Date())) {
				movieListCustomer.add(ele);
			}
		}
		return movieListCustomer;
		
	}
	
	@Transactional
	public List<Integer> getAllFavMovies(int userID){
		return movieRepository.getAllFavMovies(userID);
	}
	
//	@Transactional
//	public void addFavMovie(long userId, long movieId) {
//		movieRepository.addFavMovie(userId,movieId);
//	}
	
}
