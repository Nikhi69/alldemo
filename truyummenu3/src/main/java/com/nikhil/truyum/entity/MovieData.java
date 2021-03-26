package com.nikhil.truyum.entity;

import java.util.Date;

import org.springframework.stereotype.Component;


@Component
public class MovieData {

	private long id;
	private String title;
	private String boxoffice;
	private String active;
	private Date dateoflaunch;
	private String genre;
	private String hasteaser;

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBoxoffice() {
		return boxoffice;
	}
	public void setBoxoffice(String boxoffice) {
		this.boxoffice = boxoffice;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public Date getDateoflaunch() {
		return dateoflaunch;
	}
	public void setDateoflaunch(Date dateoflaunch) {
		this.dateoflaunch = dateoflaunch;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getHasteaser() {
		return hasteaser;
	}
	public void setHasteaser(String hasteaser) {
		this.hasteaser = hasteaser;
	}

	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MovieData other = (MovieData) obj;
		if (active != other.active)
			return false;
		if (boxoffice != other.boxoffice)
			return false;
		if (dateoflaunch == null) {
			if (other.dateoflaunch != null)
				return false;
		} else if (!dateoflaunch.equals(other.dateoflaunch))
			return false;
		if (genre == null) {
			if (other.genre != null)
				return false;
		} else if (!genre.equals(other.genre))
			return false;
		if (hasteaser != other.hasteaser)
			return false;
		if (id != other.id)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "movie [id=" + id + ", title=" + title + ", boxoffice=" + boxoffice + ", active=" + active
				+ ", dateoflaunch=" + dateoflaunch + ", genre=" + genre + ", hasteaser=" + hasteaser + "]";
	}
	
	
}


