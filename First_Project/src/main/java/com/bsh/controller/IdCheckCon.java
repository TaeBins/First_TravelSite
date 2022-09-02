package com.bsh.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;

public class IdCheckCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 사용자가 입력한 email을 받아와서 해당 email이 db에 있는지 없는지 체크
		String mb_id = request.getParameter("mb_id");
		System.out.println("mb_id : "+mb_id);
		
		boolean result = new MemberDAO().idCheck(mb_id);
		
		try {
			PrintWriter out = response.getWriter();
			out.print(result);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
