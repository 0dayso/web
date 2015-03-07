package com.beijing.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijing.dao.DatasDAO;
import com.beijing.pojo.Datas;

public class DataBiz implements IDataBiz {
	
	private DatasDAO datasDao;
	
	//set��datasDao������springע������  
	public void setDatasDao(DatasDAO datasDao) {
		this.datasDao = datasDao;
	}
	public DatasDAO getDatasDao()
	{
		return datasDao;
	}
	//����Ҳ�ǵ���dao��ɾ�Ĳ��һЩ����
	public String test()
	{
		String s=datasDao.test();
		return s;
	}
	public void delete(Datas data) {
		datasDao.delete(data);
	}

	public List find() {
		
		return datasDao.findAll();
	}

	public void save(Datas d) {
		datasDao.save(d);
	}

	public void update(Datas data) {
		datasDao.merge(data);
	}

	public List find(int pageSize, int nowPage) {
		
		return datasDao.findAll(pageSize, nowPage);
	}

	public int getCount() {
		
		return datasDao.getCount();
	}

	public int getPageCount(int count,int pageSize) {
		// TODO Auto-generated method stub
		return datasDao.getPageCount(count,pageSize);
	}

	public Datas findById(int id) {
		// TODO Auto-generated method stub
		return datasDao.findById(id);
	}
	
}
