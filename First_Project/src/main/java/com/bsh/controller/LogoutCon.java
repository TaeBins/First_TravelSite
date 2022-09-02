package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;

public class LogoutCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 로그아웃 기능 : 로그인 정보를 삭제하기!
		HttpSession session = request.getSession();
		// 특정 세션 종료
		session.removeAttribute("info");
		// 전체 세션 종료
//					session.invalidate();

		return "Main.jsp";

	}

}
