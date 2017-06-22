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
	//private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Inject
	MemberService sm_Service;
	
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
			e.printStackTrace();
		}
		
		return "redirect:/";
	}
	
/*	@RequestMapping("view.do")
	public String view(@RequestParam int mpk, Model model) {
		System.out.println("넘어온 mpk : " + mpk);
		MemberVO vo = mService.mview(mpk);
		model.addAttribute("mem", vo);
		return "member/view";
	}*/
	
	//로그인 체크!!!!!
	@RequestMapping("login_check.do")
	public String loginCheck(@ModelAttribute MemberVO vo,
			HttpServletResponse response, HttpServletRequest request){
		
		int count = sm_Service.sm_loginCheck(vo); //아이디 비교한값 (0 이나 1이 담겨있음)
		System.out.println(vo.getSm_id());
		System.out.println(vo.getSm_password());
		//System.out.println("컨트롤러 에서 확인 : " + count); //확인용
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
			if(count == 1){
				request.getSession().setAttribute("loginsession", vo);
				writer.write("1");
			}else{
				writer.write("0");
			}
			
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/";
	}
	
		//로그아웃(세션 로그아웃)
		@RequestMapping("sm_logout.do")
		public String join(HttpServletRequest request){
			System.out.println("로그아웃");
			request.getSession().invalidate();
			System.out.println("세션삭제");
			return "redirect:/";
		}
		///////////////////////////////////////////////
		//list테스트
		@RequestMapping("sm_list.do") //member폴더 안에 list.jsp 가 열린다는뜻.
		public ModelAndView list(){
			ModelAndView mav = new ModelAndView();
			List<MemberVO> list = sm_Service.sm_list();
			System.out.println(list);
			
			//setViewName : view page
			mav.setViewName("subpage/list/music_list");
			//addObject : model 과 같은 역할
			mav.addObject("list", list);
			return mav;
		}
		
		@RequestMapping("sm_listInsert.do")
		public String insert(@ModelAttribute MemberVO vo) {
			System.out.println("컨트롤러  insert()===========");
			System.out.println(vo.getsm_music());
			System.out.println(vo.getSm_from());
			sm_Service.sm_listInsert(vo);
			return "redirect:/user/sm_list.do";
			//return "subpage/list/music_list";
		}
		
		//////////////////////////////////////////
	
/*	@RequestMapping("sm_login.do")
	public String join(){
		System.out.println("login 페이지로 이동");
		return "user/UserLogin";
	}*/
	
	/* user join data controller end */
	
}
