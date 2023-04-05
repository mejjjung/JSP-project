package com.megaBox.user.repository;

import java.util.ArrayList;

import com.megaBox.user.dto.MovieDTO;

public interface IMovieDAO {

	ArrayList<MovieDTO> select();
	ArrayList<MovieDTO> movie(String movie);
}