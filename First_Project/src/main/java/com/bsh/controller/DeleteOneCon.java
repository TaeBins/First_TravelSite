package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MessageDAO;

public class DeleteOneCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int q_seq = Integer.parseInt(request.getParameter("q_seq"));

		System.out.println("q_seq : "+q_seq);
		int row = new MessageDAO().deleteMessageOne(q_seq);

		if (row > 0) {
			System.out.println("메시지 삭제 성공");
		} else {
			System.out.println("메시지 삭제 실패");
		}

		return "Questions.jsp";

	}

}
