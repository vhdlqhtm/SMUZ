package com.project.smuz.service;

import java.util.List;

import com.project.smuz.model.dto.MemberVO;

public interface MemberService {

	public List<MemberVO> sm_list();
	public void sm_insert(MemberVO vo);
	public int sm_check(MemberVO vo);
}
