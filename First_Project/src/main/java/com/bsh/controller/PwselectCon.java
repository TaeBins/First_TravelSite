package com.bsh.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;

public class PwselectCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mb_id = request.getParameter("mb_id");
		String mb_phone = request.getParameter("mb_phone");
		String mb_birthdate = request.getParameter("mb_birthdate");
		String mb_hint = request.getParameter("mb_hint");
		
		MemberDTO dto = new MemberDTO(mb_id, mb_phone, mb_birthdate, mb_hint);
		
		String mb_pw = new MemberDAO().pwselect(dto);
		System.out.println(mb_pw);
		
		String moveURL;
		
		if (mb_pw != null) {
			System.out.println("비밀번호 찾기 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("pwselect", mb_pw);
			moveURL = "Pwselectsuccess.jsp";
		} else {
			System.out.println("비밀번호 찾기 실패");
			
			moveURL = "Member.jsp";
		}
		
		
		
		return moveURL;
	}
}
