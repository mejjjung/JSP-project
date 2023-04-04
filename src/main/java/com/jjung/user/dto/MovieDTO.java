package com.jjung.user.dto;

public class MovieDTO {
	
	private int id;
	private String img;
	private String movieName;


	
	public MovieDTO(int id, String img, String movieName) {
		super();
		this.id = id;
		this.img = img;
		this.movieName = movieName;
	}


	public MovieDTO(String img, String movieName) {
		this.img = img;
		this.movieName = movieName;
	}

	public MovieDTO(String movieName) {
		this.movieName = movieName;
	}
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	
	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getMovieName() {
		return movieName;
	}


	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}


	@Override
	public String toString() {
		return "MovieDTO [id=" + id + ", movieName=" + movieName + "]";
	}
	
}


