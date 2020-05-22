package edu.hfnu.utils;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0Utils {
	private static DataSource ds;
	static {
		//初始化数据源
		ds = new ComboPooledDataSource("elderNovel");
	}
	
	//静态方法getDataSource() 用于返回数据源对象ds
	public static DataSource getDataSource() {
		return ds;
	}
}
