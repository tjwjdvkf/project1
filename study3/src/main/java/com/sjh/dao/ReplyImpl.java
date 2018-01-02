package com.sjh.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sjh.vo.ReplyVO;

@Repository
public class ReplyImpl implements ReplyDAO{
	
	@Inject
	private SqlSession session;

	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
}
