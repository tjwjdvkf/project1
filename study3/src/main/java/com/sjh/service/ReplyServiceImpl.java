package com.sjh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sjh.dao.ReplyDAO;
import com.sjh.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;

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
