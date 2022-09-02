package com.bsh.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bsh.db.SqlSessionManager;

public class MessageDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int message(MessageDTO mem_dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int mess = session.insert("message", mem_dto);
		session.close();
		
		return mess;
	}
	
	// 나에게 온 메시지 조회
	public ArrayList<MessageDTO> showMessage(String id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MessageDTO> show = (ArrayList)session.selectList("showMessage", id);
		session.close();
		
		return show;
	}
	
	public int deleteMessage (String id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteMessage", id);
		session.close();
		
		return row;
	}
	
	public int deleteMessageOne (int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteMessageOne", num);
		session.close();
		
		return row;
	}
	
}
