package com.sjh.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sjh.vo.CrudVO;

@Repository
public class CrudDAOImpl implements CrudDAO{

	@Inject
	private SqlSession session;

	@Override
	public List<?> selectCrudList(CrudVO vo) {
		return session.selectList("selectCrudList",vo);
	}

	@Override
	public void crudSave(CrudVO vo) {
		session.insert("crudSave",vo);
	}

	@Override
	public void crudRead(int crno) {
		
		
	}

	
	
	
}
