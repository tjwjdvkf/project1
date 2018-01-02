package com.sjh.dao;

import java.util.List;

import com.sjh.vo.CrudVO;

public interface CrudDAO {
	
	public List<?> selectCrudList(CrudVO vo);

	public void crudSave(CrudVO vo);

	public void crudRead(int crno);

	

	
	
	
}
