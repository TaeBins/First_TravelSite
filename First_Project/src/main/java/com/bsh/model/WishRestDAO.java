package com.bsh.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bsh.db.SqlSessionManager;

public class WishRestDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//위시
	public int wishr(WishRestDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("wishr", dto);
		session.close();
		
		return row;
	}
	
	public ArrayList<WishRestDTO> r_list(String mb_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<WishRestDTO> r_list = (ArrayList) session.selectList("r_list", mb_id);
		session.close();
		
		return r_list;
	}
	
	public int deleteOne(int wr_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteOne", wr_seq);
		session.close();

		return row;
	}
	
	public int delete(String mb_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("delete", mb_id);
		session.close();

		return row;
	}
}
