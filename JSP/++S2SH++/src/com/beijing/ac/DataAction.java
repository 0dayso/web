package com.beijing.ac;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijing.biz.DataBiz;
import com.beijing.pojo.Datas;
import com.opensymphony.xwork2.ActionSupport;

public class DataAction extends ActionSupport {
	//biz接口的声明，用来调用biz
	DataBiz idata;
	//这些对象set和get后，都会被hibernate自动放进request里
	private Integer daId;
	private String daName;
	private String daAge;
	private List<Datas> datas;
	private Datas data;
	private int nowPage = 1;
	private int pageSize = 5;
	private int pageCount;
	private int count;
	

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public List<Datas> getDatas() {
		return datas;
	}

	public void setDatas(List<Datas> datas) {
		this.datas = datas;
	}

	public DataBiz getIdata() {
		return idata;
	}

	public Integer getDaId() {
		return daId;
	}

	public void setDaId(Integer daId) {
		this.daId = daId;
	}

	public String getDaName() {
		return daName;
	}

	public void setDaName(String daName) {
		this.daName = daName;
	}

	public String getDaAge() {
		return daAge;
	}

	public void setDaAge(String daAge) {
		this.daAge = daAge;
	}

	
	public void setIdata(DataBiz idata) {
		this.idata = idata;
	}
	public void setDatas(Datas a)
	{
		this.data=a;
	}

	
	public String save(){

	
		System.out.println("save");
		data = new Datas(daId,daName, daAge);
	
		
		idata.save(data);
		
		System.out.println("保存成功");
		return "save";
		
	}
		
	
	public String delete(){
		System.out.println("delete");
		System.out.println(daId);
		data = new Datas(daId);
		idata.delete(data);
		return "delete";
	}
	
	public String update(){
		System.out.println("update");
		data = new Datas(daId,daName, daAge);
		idata.update(data);
		return "update";
	}
	
	public String findById(){
		System.out.println("findById");
		data= idata.findById(daId);
		daAge = data.getDaAge();
		daName = data.getDaName();
		daId = data.getDaId();
		return "findById";
	}
	
	public String find(){
		System.out.println("find");
		System.out.println(idata);
		datas = idata.find(pageSize,nowPage);
		count = idata.getCount();
		pageCount = idata.getPageCount(count,pageSize);
		for (Datas data : datas) {
			System.out.println(data.getDaAge() + " " + data.getDaName());
		}
		return "find";
	}
	
}
