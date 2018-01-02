package com.sjh.service;

import java.util.List;

import com.sjh.vo.ReplyVO;

public interface ReplyService {

	//댓글 리스트
		public List<ReplyVO> list(Integer bno) throws Exception;
		
		//댓글 작성
		public void create(ReplyVO vo) throws Exception;
		
		//댓글 수정
		public void update(ReplyVO vo) throws Exception;
		
		//댓글 삭제
		public void delete(ReplyVO vo) throws Exception;
	
}
