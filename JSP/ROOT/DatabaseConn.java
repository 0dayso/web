package com.jspdev.util;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;//һ�����ڲ�������Դ�Ĺ�����
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