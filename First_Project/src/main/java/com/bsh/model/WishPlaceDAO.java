package com.bsh.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bsh.db.SqlSessionManager;

public class WishPlaceDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//위시
	public int wish(WishPlaceDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("wish", dto);
		session.close();
		
		return row;
	}
	
	public ArrayList<WishPlaceDTO> p_list(String mb_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<WishPlaceDTO> p_list = (ArrayList) session.selectList("p_list", mb_id);
		session.close();
		
		return p_list;
	}
	
	public int deleteOne1(int wp_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteOne1", wp_seq);
		session.close();

		return row;
	}
	
	public int delete1(String mb_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("delete1", mb_id);
		session.close();

		return row;
	}
	
}
