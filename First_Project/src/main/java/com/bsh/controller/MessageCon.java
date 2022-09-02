package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MessageDAO;
import com.bsh.model.MessageDTO;

public class MessageCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String sender = request.getParameter("sender");
		String recipient = request.getParameter("recipient");
		String message = request.getParameter("message");

		System.out.println(sender + recipient + message);

		MessageDTO mem_dto = new MessageDTO(sender, recipient, message);

		int send = new MessageDAO().message(mem_dto);

		if (send > 0) {
			System.out.println("메시지 전송 성공");
		} else {
			System.out.println("메시지 전송 실패");
		}
		
		return "Questions.jsp";
		
	}
	
}
