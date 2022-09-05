package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;

public class UpdateCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
		String mb_nick = request.getParameter("mb_nick");
		String mb_phone = request.getParameter("mb_phone");
		String mb_hint = request.getParameter("mb_hint");
		

		MemberDTO dto = new MemberDTO(mb_id, mb_pw, mb_nick, mb_phone, mb_hint);

		int row = new MemberDAO().update(dto);

		if (row > 0) {
			System.out.println("회원정보 수정 성공");

			// 변경된 회원 정보를 session에도 업데이트해주기!
			HttpSession session = request.getSession();
			session.setAttribute("info", dto);
			session.removeAttribute("info");
			
		} else {
			System.out.println("회원정보 수정 실패");
		}
		
		return "Main.jsp";
		
	}
	
}
