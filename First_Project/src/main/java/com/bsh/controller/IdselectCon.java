package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;

public class IdselectCon implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mb_phone = request.getParameter("mb_phone");
		String mb_birthdate = request.getParameter("mb_birthdate");
		String mb_hint = request.getParameter("mb_hint");
		
		MemberDTO dto = new MemberDTO(mb_phone, mb_birthdate, mb_hint);
		
		String id_dao = new MemberDAO().idselect(dto);
		System.out.println("확인" + id_dao);
		
		String moveURL;
		
		if (id_dao != null) {
			System.out.println("아이디 찾기 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("idselect", id_dao);
			moveURL = "Idselectsuccess.jsp";
		} else {
			System.out.println("아이디 찾기 실패");
			
			moveURL = "Idselect.jsp";
		}
		
		return moveURL;
	}

}
