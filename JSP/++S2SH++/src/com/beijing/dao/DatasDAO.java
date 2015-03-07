package com.beijing.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.beijing.pojo.Datas;

public class DatasDAO extends HibernateDaoSupport {

	private static final Logger log = LoggerFactory.getLogger(DatasDAO.class);

	public String test()
	{
		return "save";
	}
	//保存的方法
	
	public void save(Datas transientInstance) {
		log.debug("saving Datas instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	//删除的方法
	public void delete(Datas persistentInstance) {
		log.debug("deleting Datas instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	//根据实体的主键Id得到实体的方法
	public Datas findById(java.lang.Integer id) {
		log.debug("getting Datas instance with id: " + id);
		try {
			Datas instance = (Datas) getHibernateTemplate().get(
					"com.beijing.pojo.Datas", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	//数据全查的方法，不含分页
	public List findAll() {
		log.debug("finding all Datas instances");
		try {
			String queryString = "from Datas";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	//数据全查的方法，含分页
	public List findAll(int pageSize, int pageNow) {
		log.debug("finding all Datas instances");
		Session session = null;
		try {
			String queryString = "from Datas";
			session = this.getSession();
			Query query = session.createQuery(queryString);
			int firstResultIndex = pageSize * (pageNow - 1);
			query.setFirstResult(firstResultIndex);
			query.setMaxResults(pageSize);
			List list = query.list();

			return list;
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		} finally {
			//记得session要关闭，不然导致浏览器加载数据缓慢
			session.close();
		}
	}

	//修改的方法有两个调用任何都行，区别是第一个返回一个实体，第二个不返回
	//修改的方法1
	public Datas merge(Datas detachedInstance) {
		log.debug("merging Datas instance");
		try {
			Datas result = (Datas) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}

	}
	
	//修改的方法2
	public void update(Datas detachedInstance) {
		log.debug("merging Datas instance");
		try {
			super.getHibernateTemplate().update(detachedInstance);
			log.debug("merge successful");
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}

	}

	//得到总共多少条数据的方法
	public int getCount() {
		System.out.println("pageCount");
		Session session = null;
		int count = 0;
		try {
			String queryString = "select count(*) from Datas";
			session = this.getSession();
			Query query = session.createQuery(queryString);
			count = Integer.valueOf(query.uniqueResult().toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			//记得session要关闭，不然导致浏览器加载数据缓慢
			session.close();
		}
		return count;
	}
	
	//每pageSize个数据，有几页数据
	public int getPageCount(int count,int pageSize) {
		int pageCount = count/pageSize;
		if(count%pageSize > 0) {
			pageCount++;
		}
		return pageCount;
	}
}
