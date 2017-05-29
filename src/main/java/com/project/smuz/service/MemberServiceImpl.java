package com.project.smuz.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.smuz.model.dao.MemberDAO;
import com.project.smuz.model.dto.MemberVO;
@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDAO memberdao;
	
	@Override
	public List<MemberVO> sm_list() {
		List<MemberVO> list = memberdao.sm_list();
		return list;
	}

	@Override
	public void sm_insert(MemberVO vo) {
		memberdao.sm_insert(vo);
	}

	@Override
	public int sm_check(MemberVO vo) {
		return memberdao.sm_check(vo);
	}


}
