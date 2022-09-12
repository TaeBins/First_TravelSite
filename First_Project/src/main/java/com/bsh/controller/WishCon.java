package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.WishPlaceDAO;
import com.bsh.model.WishPlaceDTO;

public class WishCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 데이터 받아오기
		int place_seq = Integer.parseInt(request.getParameter("place_seq"));
		String mb_id = request.getParameter("mb_id");

		// DTO로 데이터 묶기
		WishPlaceDTO dto = new WishPlaceDTO(place_seq, mb_id);

		// 메소드 실행
		int row = new WishPlaceDAO().wish(dto);
		
		// 성공/실패 판단 후 페이지 이동
		String referer = request.getHeader("Referer");
		String real = referer.substring(42);
		if(row>0) {
			System.out.println("찜하기 성공");
		}else {
			System.out.println("찜하기 실패");
		}

		return real;

	}

}
