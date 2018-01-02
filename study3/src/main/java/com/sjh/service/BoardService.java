package com.sjh.service;

import java.util.List;

import com.sjh.vo.BoardVO;
import com.sjh.vo.SearchVO;

public interface BoardService {

		//글 작성
		public void create(BoardVO vo)throws Exception;
		//글 디테일
		public BoardVO read(Integer bno)throws Exception;
		//글 수정
		public void update(BoardVO vo)throws Exception;
		//글 삭제
		public void remove(Integer bno)throws Exception;
		//글 리스트
		public List<BoardVO> listAll(SearchVO searchVO)throws Exception;
		
		//글 cnt
		public Integer boardCnt() throws Exception;
		public Object readCnt(int bno)  throws Exception;
		
}
