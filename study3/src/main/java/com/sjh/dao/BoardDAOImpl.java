package com.sjh.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sjh.vo.BoardVO;
import com.sjh.vo.SearchVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.sjh.mappers.board";

	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace+".create",vo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		
		return session.selectOne(namespace+".read",bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update",vo);
		
	}

	@Override
	public void remove(Integer bno) throws Exception {
		session.delete(namespace+".remove",bno);
	}

	@Override
	public List<BoardVO> listAll(SearchVO searchVO) throws Exception {

		return session.selectList(namespace+".listAll",searchVO);
	}

	@Override
	public Integer boardCnt() {

		return session.selectOne(namespace+".boardCnt");
	}

	@Override
	public Object readCnt(int bno) {
		
		return session.update(namespace+".readCnt",bno);
	}
	
	
	
}
