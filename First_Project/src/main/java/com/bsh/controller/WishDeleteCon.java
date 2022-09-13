package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MessageDAO;
import com.bsh.model.WishPlaceDAO;
import com.bsh.model.WishRestDAO;

public class WishDeleteCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String mb_id = request.getParameter("mb_id");

		System.out.println("mb_id : "+mb_id);
		int row = new WishPlaceDAO().delete1(mb_id);

		if (row > 0) {
			System.out.println("맛집 찜 전체삭제 성공");
		} else {
			System.out.println("맛집 찜 전체삭제 실패");
		}

		return "Like.jsp";

	}

}
