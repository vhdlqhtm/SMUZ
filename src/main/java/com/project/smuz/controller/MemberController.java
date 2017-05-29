package com.project.smuz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.smuz.model.dto.MemberVO;
import com.project.smuz.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Inject
	MemberService sm_Service;
	
	@RequestMapping("sm_join.do")
	public String join(){
		System.out.println("join 페이지로 이동");
		return "member/sm_join";
	}
	 
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute MemberVO vo) {
		System.out.println("컨트롤러  insert()===========");
		System.out.println(vo.getSm_id());
		System.out.println(vo.getSm_name());
		System.out.println(vo.getSm_password());
		System.out.println(vo.getSm_sex());
		sm_Service.sm_insert(vo);
		return "redirect:/";
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
	
	/*@RequestMapping("sm_check") //member폴더 안에 list.jsp 가 열린다는뜻.
	public ModelAndView mlist(){
		System.out.println("dididid");
		ModelAndView mav = new ModelAndView();
		List<MemberVO> sm_check = sm_Service.sm_check();
		//setViewName : view page
		mav.setViewName("member/sm_join");
		//addObject : model 과 같은 역할
		mav.addObject("list",sm_check);
		return mav;
	}*/

}