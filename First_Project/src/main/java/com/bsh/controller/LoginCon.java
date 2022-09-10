package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;

public class LoginCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 로그인 기능 : 사용자가 입력한 id, pw를 받아와서 테이블에 있는지 없는지 확인

		// 데이터 받아오기
		String mb_id = request.getParameter("mb_id");
		System.out.println(mb_id);
		String mb_pw = request.getParameter("mb_pw");
		System.out.println(mb_pw);

		// DTO로 묶기
		MemberDTO dto = new MemberDTO(mb_id, mb_pw);

		// 로그인 메소드 실행
		MemberDTO info = new MemberDAO().login(dto);

		String moveURL;
		// 성공/실패 여부
		if (info != null) {
			System.out.println("로그인 성공");

			// session에 로그인 정보 유지
			// 객체 불러온 후 데이터 담아서 보내기
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			moveURL = "./Main.jsp";
		} else {
			System.out.println("로그인 실패");
			moveURL = "./Member.jsp";
		}
		
		return moveURL;

	}

}
