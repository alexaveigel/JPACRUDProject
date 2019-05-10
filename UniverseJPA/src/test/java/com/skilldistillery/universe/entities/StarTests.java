package com.skilldistillery.universe.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class StarTests {

	private static EntityManagerFactory emf;
	private EntityManager em;

	@BeforeAll
	static void setUpAll() {
		emf = Persistence.createEntityManagerFactory("UniversePU");
	}

	@AfterAll
	static void tearDownAll() {
		emf.close();
	}

	@BeforeEach
	void setUp() {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() {
		em.close();
	}
	
	@Test
	void test_star_mapping() {
		Star s = em.find(Star.class, 1);
		assertEquals("Sun", s.getName());
		assertEquals("G2V", s.getStarClass());
		assertEquals(0, s.getDistance());
		assertEquals(4.8, s.getAbsoluteMagnitude());
	}

}
