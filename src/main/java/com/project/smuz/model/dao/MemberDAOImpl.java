package com.project.smuz.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.smuz.model.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sqlSession; //root-context에 있는  sql관련내역을 가져와서 사용하게됨
	
	@Override
	public List<MemberVO> sm_memberlist() {
		List<MemberVO> sm_memberlist =
				//member.memberlist 는 memberMapper.xml에 있는 내용을 가져오는것
				sqlSession.selectList("member.sm_memberlist");
		return sm_memberlist;
	}

	@Override
	public void sm_insert(MemberVO vo) {
		sqlSession.insert("member.sm_memberInsert", vo);

	}

	@Override
	public int sm_check(MemberVO vo) {
		System.out.println("memberDAOIMPL : " + sqlSession.selectOne("member.sm_check", vo));
		return sqlSession.selectOne("member.sm_check", vo); //sql문자체의 값을 리턴해줘야 하기 때문에 바로 보내주면됨!
	}

	@Override
	public int sm_loginCheck(MemberVO vo) {
		return sqlSession.selectOne("member.sm_loginCheck", vo);
	}


	
	



}
