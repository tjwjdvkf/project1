package com.sjh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sjh.dao.CrudDAO;
import com.sjh.vo.CrudVO;

@Service
public class CrudServiceImpl implements CrudService{
	
	@Inject
	private CrudDAO crudDAO;
	//crud 리스트
	@Override
	public List<?> selectCrudList(CrudVO vo) {
		return crudDAO.selectCrudList(vo);
	}
	//crud 저장
	@Override
	public void crudSave(CrudVO vo) {
		crudDAO.crudSave(vo);
	}
	//crud 디테일
	@Override
	public void crudRead(int crno) {
		crudDAO.crudRead(crno);
	}

}
