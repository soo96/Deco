package com.deco.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.deco.dto.Users;
import com.deco.mybatis.SqlSessionBean;

public class UsersDao {

	private static UsersDao dao = new UsersDao();
	private UsersDao() {}
	public static UsersDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	
	public Users getUser(int idx) {
		SqlSession mapper = factory.openSession();
		Users users = mapper.selectOne("getUser");
		mapper.close();
		return users;
	}
	
	public void insert(Users users) {
		SqlSession mapper = factory.openSession();
		mapper.insert("insert");
		mapper.commit();
		mapper.close();
	}
	
	public void update(Users users) {
		SqlSession mapper = factory.openSession();
		mapper.update("update");
		mapper.commit();
		mapper.close();
	}
	
	
	
}
