package com.skilldistillery.universe.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.universe.data.UniDAO;
import com.skilldistillery.universe.entities.Star;
@Controller
public class StarController {
	@Autowired
	private UniDAO dao;
	
	@RequestMapping(path="/")
	public String index(Model model) {
		List<Star> stars = dao.findAll();
		model.addAttribute("star", stars);
		System.out.println(stars);
	  return "WEB-INF/index.jsp";
	  // return "index"; // if using a ViewResolver.
	}
	
	
	@RequestMapping(path = "getStar.do", method = RequestMethod.GET)
	  public ModelAndView getStar(@RequestParam("sid") int sid) {
	    ModelAndView mv = new ModelAndView();

	    Star star = dao.findById(sid);     

	    mv.addObject("star", star);
	    mv.setViewName("WEB-INF/uni/show.jsp");
	    return mv;
	  }
}
