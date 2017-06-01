package com.project.smuz.controller;

import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import org.apache.log4j.spi.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	
	
	/* user join data controller */
	@RequestMapping(value="join.do", method=RequestMethod.POST)
	@ResponseBody
	public String join(@RequestBody Map<String,Object> data){
		
		System.out.println("===============");
		System.out.println("==           ==");
		System.out.println("== join data ==");
		System.out.println("==           ==");
		System.out.println("===============");
		
		String id = (String)data.get("id");
		String password = (String)data.get("id");
		String name = (String)data.get("name");
		String birthday = (String)data.get("birthday");
		String sex = (String)data.get("sex");
		List<String> m = (List<String>)data.get("music");
		for(int i = 0; i < m.size(); i++){
			System.out.println(m.get(i));
		}
		
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
	
	/* user join data controller end */
	
}
