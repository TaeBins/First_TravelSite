package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;
import com.bsh.model.MessageDAO;

public class DeleteMemberCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String mb_id = request.getParameter("mb_id");
		System.out.println("mb_id :"+mb_id );
		
		MemberDTO dto = new MemberDTO(mb_id);
		int row = new MemberDAO().deletemember(dto);

		if (row > 0) {
			System.out.println("회원탈퇴 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("info", dto);
			session.removeAttribute("info");
		} else {
			System.out.println("회원탈퇴 실패");
		}

		return "Main.jsp";

	}

}
