package com.jspdev.util;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;//一个用于查找数据源的工具类
	public class DatabaseConn
	{
		try
		{
			Context initCtx=new javax.naming.InitalContext();
			Context envCtx=(Context)initCtx.lookup("java:comp/env");
			DataSource ds=(DataSource)envCtx.lookup("jdbc/wyz");
			return ds.getConnection();
		}
		catch(NamingException e)
		{
			throw e;
		}
	}