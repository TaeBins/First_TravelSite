package com.bsh.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bsh.db.SqlSessionManager;

public class MessageDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int message(MessageDTO mem_dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("message", mem_dto);
		session.close();

		return row;
	}

	// 나에게 온 메시지 조회
	public ArrayList<MessageDTO> showMessage() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MessageDTO> msg_list = (ArrayList) session.selectList("showMessage");
		session.close();

		return msg_list;
	}


	public int deleteMessage() {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteMessage");
		session.close();

		return row;
	}

	public int deleteMessageOne(int q_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteMessageOne", q_seq);
		session.close();

		return row;
	}

	public ArrayList<MessageDTO> realshowMessage(String mb_id){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MessageDTO> realmsg_list = (ArrayList) session.selectList("realshowMessage", mb_id);
		session.close();

		return realmsg_list;
	}
}
