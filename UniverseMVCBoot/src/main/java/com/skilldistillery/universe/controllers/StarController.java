package com.skilldistillery.universe.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.universe.data.UniDAO;
import com.skilldistillery.universe.entities.Star;
@Controller
public class StarController {
	private UniDAO dao;
	
	@RequestMapping(path = "getStar.do", method = RequestMethod.GET)
	  public ModelAndView getStar(@RequestParam("sid") int sid) {
	    ModelAndView mv = new ModelAndView();

	    Star star = dao.findById(sid);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("star", star);
	    mv.setViewName("WEB-INF/uni/show.jsp");
	    return mv;
	  }
}
