package com.megaBox.user.dto;

public class MovieDTO {
	
	private int id;
	private String img;
	private String movie;


	
	public MovieDTO(int id, String img, String movie) {
		super();
		this.id = id;
		this.img = img;
		this.movie = movie;
	}


	public MovieDTO(String img, String movie) {
		this.img = img;
		this.movie = movie;
	}

	public MovieDTO(String movie) {
		this.movie = movie;
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


	public String getMovie() {
		return movie;
	}


	public void setMovie(String movie) {
		this.movie = movie;
	}


	@Override
	public String toString() {
		return "MovieDTO [id=" + id + ", movie=" + movie + "]";
	}
	
}


