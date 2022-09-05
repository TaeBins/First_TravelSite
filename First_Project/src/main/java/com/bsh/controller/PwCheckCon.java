package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;

public class PwCheckCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 사용자가 입력한 email을 받아와서 해당 email이 db에 있는지 없는지 체크
		String mb_pw = request.getParameter("mb_pw");
		System.out.println("mb_pw : "+mb_pw);
		
		String result = new MemberDAO().PwCheck(mb_pw);
		
		String moveURL;
		
		if(result.equals("1")) {
			System.out.println("비밀번호 인증 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("PwCheck", mb_pw);
			moveURL = "Update.jsp";
		}else {
			System.out.println("비밀번호 인증 실패");
			
			moveURL = "Upda.jsp";
		}
		return moveURL;
	}

}
