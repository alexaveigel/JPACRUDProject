package com.skilldistillery.universe.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Star {

	@Id
	private int id;

	@Column
	private String name;

	@Column(name = "class")
	private String starClass;

	@Column(name = "distance_in_light_years")
	private double distance;

	@Column(name = "magnitude_absolute")
	private double absoluteMagnitude;

	public Star() {
		super();
	}

	public Star(int id, String name, String starClass, double distance, double absoluteMagnitude) {
		super();
		this.id = id;
		this.name = name;
		this.starClass = starClass;
		this.distance = distance;
		this.absoluteMagnitude = absoluteMagnitude;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStarClass() {
		return starClass;
	}

	public void setStarClass(String starClass) {
		this.starClass = starClass;
	}

	public double getDistance() {
		return distance;
	}

	public void setDistance(double distance) {
		this.distance = distance;
	}

	public double getAbsoluteMagnitude() {
		return absoluteMagnitude;
	}

	public void setAbsoluteMagnitude(double absoluteMagnitude) {
		this.absoluteMagnitude = absoluteMagnitude;
	}

	@Override
	public String toString() {
		return "Star [id=" + id + ", name=" + name + ", starClass=" + starClass + ", distance=" + distance
				+ ", absoluteMagnitude=" + absoluteMagnitude + "]";
	}

}
