package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.WishPlaceDAO;
import com.bsh.model.WishRestDAO;

public class WishDeleteOneCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int wp_seq = Integer.parseInt(request.getParameter("wp_seq"));

		int row = new WishPlaceDAO().deleteOne1(wp_seq);

		if (row > 0) {
			System.out.println("맛집 찜 삭제 성공");
		} else {
			System.out.println("맛집 찜 삭제 실패");
		}

		return "Like.jsp";

	}

}
