package com.skilldistillery.universe.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.universe.entities.Star;

@Transactional
@Service
public class UniDAOImpl implements UniDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Star findById(int id) {
		Star star = em.find(Star.class, id);
		return star;
	}

	@Override
	public List<Star> findAll() {
		String jpql = "SELECT star FROM Star star";
		List<Star> star = em.createQuery(jpql, Star.class).getResultList();

		return star;
	}

}
