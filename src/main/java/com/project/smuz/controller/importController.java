package com.project.smuz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * 
 * 2017-05-31(edit)
 * - Import Controller -
 * only import controller page
 * 
 */

@Controller
@RequestMapping("import")
public class importController {
	
	/*join form include*/
	@RequestMapping("join.do")
	public ModelAndView join(ModelAndView mv){
		
		System.out.println("===============");
		System.out.println("==           ==");
		System.out.println("== join form ==");
		System.out.println("==           ==");
		System.out.println("===============");
		
		mv.setViewName("home");
		mv.addObject("include","subpage/user/login.jsp");
		return mv;
	}
	/*join form include end*/
	
	/*mypage form include*/
	@RequestMapping("mypage.do")
	public ModelAndView mypage(ModelAndView mv){
		
		System.out.println("=================");
		System.out.println("==             ==");
		System.out.println("== mypage form ==");
		System.out.println("==             ==");
		System.out.println("=================");
		
		mv.setViewName("home");
		mv.addObject("include","subpage/mypage/index.jsp");
		return mv;
	}
	/*mypage form include end*/
	
	//로그인
	@RequestMapping("sm_login.do")
	public ModelAndView login(ModelAndView mv){
		
		System.out.println("===============");
		System.out.println("==           ==");
		System.out.println("== join form ==");
		System.out.println("==           ==");
		System.out.println("===============");
		
		mv.setViewName("subpage/user/userlogin");
		
		return mv;
	}
	
}
