package com.project.smuz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * 
 * 2017-05-31
 * - Import Controller -
 * 오직 임포트를 위한 컨트롤러 단입니다.
 * 수정 시 문의 
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
	
}
