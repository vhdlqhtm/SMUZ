package com.project.smuz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.spi.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@Inject
	MemberService sm_Service;
	
	/* user join data controller */
	@RequestMapping(value="join.do", method=RequestMethod.POST)
	@ResponseBody
	public String join(@RequestBody Map<String,Object> data){
		
		System.out.println("===============");
		System.out.println("==           ==");
		System.out.println("== join data ==");
		System.out.println("==           ==");
		System.out.println("===============");
		
		String id = (String)data.get("sm_id");
		String password = (String)data.get("sm_password");
		String name = (String)data.get("sm_name");
		String birthday = (String)data.get("sm_birth");
		String age = (String)data.get("sm_age");
		String sex = (String)data.get("sm_sex");
		List<String> m = (List<String>)data.get("sm_music");
		for(int i = 0; i < m.size(); i++){
			System.out.println(m.get(i));
		}
		System.out.println(id);
		System.out.println(password);
		System.out.println(name);
		System.out.println(birthday);
		System.out.println(age);
		System.out.println(sex);
		System.out.println(m);
		
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
		
		return null;
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
	
	
	/* user join data controller end */
	
}
