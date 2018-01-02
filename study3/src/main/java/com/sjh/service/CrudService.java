package com.sjh.service;

import java.util.List;

import com.sjh.vo.CrudVO;

public interface CrudService {

	public List<?> selectCrudList(CrudVO vo);

	public void crudSave(CrudVO vo);

	public void crudRead(int crno);

	

	
}
