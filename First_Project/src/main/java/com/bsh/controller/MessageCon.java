package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MessageDAO;
import com.bsh.model.MessageDTO;

public class MessageCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
//		HttpSession session = request.getSession();
//		session.getAttribute()
		
		String q_title = request.getParameter("q_title");
		String q_content = request.getParameter("q_content");
		String mb_id = request.getParameter("mb_id");

		System.out.println(q_title + q_content + mb_id);

		MessageDTO mem_dto = new MessageDTO(q_title, q_content, mb_id);

		int row = new MessageDAO().message(mem_dto);

		if (row > 0) {
			System.out.println("메시지 전송 성공");
		} else {
			System.out.println("메시지 전송 실패");
		}
		
		return "Questions.jsp";
		
	}
	
}
