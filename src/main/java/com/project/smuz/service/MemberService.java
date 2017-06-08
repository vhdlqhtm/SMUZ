package com.project.smuz.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.smuz.model.dto.MemberVO;

public interface MemberService {

	public List<MemberVO> sm_memberlist();
	public void sm_insert(MemberVO vo);
	public int sm_check(MemberVO vo);
	public MemberVO sm_loginCheck(MemberVO vo);
}
