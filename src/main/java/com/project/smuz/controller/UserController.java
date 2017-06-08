package com.project.smuz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.catalina.startup.UserConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.project.smuz.model.dto.MemberVO;
import com.project.smuz.service.MemberService;

/*
 * 
 * 2017-05-31(edit)
 * - User Controller -
 * user join & login & modify
 * 
 */

@Controller
@RequestMapping("user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Inject
	MemberService sm_Service;
	
	//로그인 세션 테스트
	@RequestMapping("test.do")
	public String test(){
		System.out.println("join 페이지로 이동");
		return "/user/test";
	}
	
	/* user join data controller */
	@RequestMapping(value="join.do", method=RequestMethod.POST)
	@ResponseBody
	public void join(@RequestBody Map<String,Object> data, MemberVO vo){
		
		System.out.println("===============");
		System.out.println("==           ==");
		System.out.println("== join data ==");
		System.out.println("==           ==");
		System.out.println("===============");
		
		String id = (String)data.get("sm_id");
		String password = (String)data.get("sm_password");
		String name = (String)data.get("sm_name");
		String birthday = (String)data.get("sm_birth");
		int age = Integer.parseInt((String) data.get("sm_age"));
		String sex = (String)data.get("sm_sex");
		List<String> m = (List<String>)data.get("sm_music");
		String aa = "";
		for(int i = 0; i < m.size(); i++){
			System.out.println(m.get(i));
			aa += m.get(i)+"/";
		}
		vo.setSm_id(id);
		vo.setSm_password(password);
		vo.setSm_name(name);
		vo.setSm_birth(birthday);
		vo.setSm_age(age);
		vo.setSm_sex(sex);
		vo.setsm_music(aa);
		
		sm_Service.sm_insert(vo);
		
		/* 
		 * -- data format --
		 * 
		 * id = userid
		 * password = userpassword
		 * name = username
		 * birthday = userbirthday(mm-dd-yyyy)
		 * sex = usersex
		 * List type = music[data,data,data]
		 */
		
	}
	
	@RequestMapping("sm_check.do")
	public String sm_check(@ModelAttribute MemberVO vo,
			HttpServletResponse response){
		
		int count = sm_Service.sm_check(vo); //아이디 비교한값 (0 이나 1이 담겨있음)
		System.out.println("컨트롤러 에서 확인 : " + count); //확인용
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
			if(count == 1){
				writer.write("1");
			}else{
				writer.write("0");
			}
			
			writer.flush();
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/member/sm_join";
	}
	
/*	@RequestMapping("view.do")
	public String view(@RequestParam int mpk, Model model) {
		System.out.println("넘어온 mpk : " + mpk);
		MemberVO vo = mService.mview(mpk);
		model.addAttribute("mem", vo);
		return "member/view";
	}*/
	
	//로그인 체크!!!!!
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session, HttpServletResponse response){
		logger.debug("=============loginCheck");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		System.out.println(sm_Service.sm_loginCheck(vo));
		vo = sm_Service.sm_loginCheck(vo);
		if (vo != null ){
			session.setAttribute("sm_session", vo);
			System.out.println("로그인 되었습니다.");
		}else{
			 try {
				response.sendRedirect("/login.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		}
		//웹페이지에서 밭은 아이디, 패스워드 일치시 admin 세션key 생성
		/*session.setAttribute("id", vo.getSm_id());
		session.setAttribute("pw", vo.getSm_password());*/
		System.out.println("접속정보 전송완료!");
		System.out.println(vo.getSm_id());
		System.out.println(vo.getSm_password());
		
		return mav;
	}
	
	/* user join data controller end */
	
}
