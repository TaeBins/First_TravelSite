package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MessageDAO;
import com.bsh.model.MessageDTO;

public class MessageCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String Q_TITLE = request.getParameter("Q_TITLE");
		String Q_CONTENT = request.getParameter("Q_CONTENT");
		String Q_FILE = request.getParameter("Q_FILE");
		String MB_ID = request.getParameter("MB_ID");

		System.out.println(Q_TITLE + Q_CONTENT + Q_FILE + MB_ID);

		MessageDTO mem_dto = new MessageDTO(Q_TITLE, Q_CONTENT, Q_FILE, MB_ID);

		int send = new MessageDAO().message(mem_dto);

		if (send > 0) {
			System.out.println("메시지 전송 성공");
		} else {
			System.out.println("메시지 전송 실패");
		}
		
		return "Questions.jsp";
		
	}
	
}
