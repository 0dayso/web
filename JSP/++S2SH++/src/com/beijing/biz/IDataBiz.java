package com.beijing.biz;

import java.util.List;

import com.beijing.pojo.Datas;

public interface IDataBiz {
	//action调用的是这个接口
	public void save(Datas d);
	public void delete(Datas daId);
	public void update(Datas data);
	public Datas findById(int id);
	public List find();
	public int getCount();
	public List find(int pageSize, int nowPage);
	public int getPageCount(int count,int pageSize);
	public String test();
}
