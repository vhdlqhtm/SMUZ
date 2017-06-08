package com.project.smuz.model.dao;

import java.util.List;

import com.project.smuz.model.dto.MemberVO;

public interface MemberDAO {
	
	public List<MemberVO> sm_memberlist();
	public void sm_insert(MemberVO vo);
	public int sm_check(MemberVO vo);
	public MemberVO sm_loginCheck(MemberVO vo);

}
