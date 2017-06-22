package com.project.smuz.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.smuz.model.dto.MemberVO;

public interface MemberService {

	public List<MemberVO> sm_memberlist();
	public void sm_insert(MemberVO vo);
	public int sm_check(MemberVO vo);
	public int sm_loginCheck(MemberVO vo);
	//list 테스트//
	public List<MemberVO> sm_list();
	public void sm_listInsert(MemberVO vo);
	/////////////////////////////////
}
