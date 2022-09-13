package com.bsh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.WishRestDAO;
import com.bsh.model.WishRestDTO;

public class RWishCon implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 데이터 받아오기
				int rest_seq = Integer.parseInt(request.getParameter("rest_seq"));
				String mb_id = request.getParameter("mb_id");

				// DTO로 데이터 묶기
				WishRestDTO dto = new WishRestDTO(rest_seq, mb_id);

				// 메소드 실행
				int row = new WishRestDAO().wishr(dto);
				
				// 성공/실패 판단 후 페이지 이동
				String referer = request.getHeader("Referer");
				String real = referer.substring(41);
				if(row>0) {
					System.out.println("찜하기 성공");
				}else {
					System.out.println("찜하기 실패");
				}

				return real;
		

	}

}
