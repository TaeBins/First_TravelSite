package com.bsh.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bsh.db.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 회원가입
	public int join(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();

		return row;
	}

	// 로그인
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("login", dto);
		session.close();

		return info;
	}

	// 회원정보수정
	public int update(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("update", dto);
		session.close();

		return row;
	}

	// 회원 조회
	public ArrayList<MemberDTO> showMember() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MemberDTO> mem_list = (ArrayList) session.selectList("showMember");
		session.close();

		return mem_list;
	}

	// 아이디 중복체크
	public boolean idCheck(String mb_id) {
		boolean result = false;
		SqlSession session = sqlSessionFactory.openSession(true);
		String id = session.selectOne("idCheck", mb_id);

		if (id != null) {
			result = true;
		}

		session.close();
		return result;
	}

	// 비밀번호 확인
	public String PwCheck(String mb_pw, String mb_id) {
		String result = null;
		SqlSession session = sqlSessionFactory.openSession(true);
		String pw = session.selectOne("PwCheck", mb_id);
		System.out.println(pw +"확인확인");

		if (pw != null) {
			result = pw;
		}

		session.close();
		return result;
	}

	// 비밀번호 찾기
	public String pwselect(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String pw = session.selectOne("pwselect", dto);
		System.out.println(pw);

		session.close();
		return pw;
	}

	// 아이디 찾기
	public String idselect(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String idselect = session.selectOne("idselect", dto);

		session.close();
		return idselect;
	}

}
