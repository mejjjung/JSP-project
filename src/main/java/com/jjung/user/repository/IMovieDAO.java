package com.jjung.user.repository;

import java.util.ArrayList;

import com.jjung.user.dto.MovieDTO;

public interface IMovieDAO {

	ArrayList<MovieDTO> select();
	ArrayList<MovieDTO> movie(String movieName);
}