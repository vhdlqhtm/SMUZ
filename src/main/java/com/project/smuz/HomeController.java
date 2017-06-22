package com.project.smuz;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*
 * 
 * 2017-05-31(edit)
 * SMUZ index page setting 
 * 
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model, ModelAndView mv) {
		
		/*
		 * first include page setting
		 * and push index page
		 */
		
		mv.setViewName("home");
		mv.addObject("include","subpage/container/feed.jsp");
		
		return mv;
	}
	
}
