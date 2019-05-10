package com.skilldistillery.universe.data;

import java.util.List;

import com.skilldistillery.universe.entities.Star;

public interface UniDAO {
	Star findById(int id);
	List<Star> findAll();
}
