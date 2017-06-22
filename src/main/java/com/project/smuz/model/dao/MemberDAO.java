package com.project.smuz.model.dao;

import java.util.List;

import com.project.smuz.model.dto.MemberVO;

public interface MemberDAO {
	
	public List<MemberVO> sm_memberlist();
	public void sm_insert(MemberVO vo);
	public int sm_check(MemberVO vo);
	public int sm_loginCheck(MemberVO vo);
	//list 테스트//
	public List<MemberVO> sm_list();
	public void sm_listInsert(MemberVO vo);
	///////////////////////////////////////////
}
