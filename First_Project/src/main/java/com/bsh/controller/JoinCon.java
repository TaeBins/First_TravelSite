package com.bsh.controller;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.model.MemberDAO;
import com.bsh.model.MemberDTO;

public class JoinCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 데이터 받아오기
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
		System.out.println(mb_pw);
		String mb_nick = request.getParameter("mb_nick");
		String mb_phone = request.getParameter("mb_phone");
		String mb_birthdate = request.getParameter("mb_birthdate");
		String mb_hint = request.getParameter("mb_hint");

		// DTO로 데이터 묶기
		MemberDTO dto = new MemberDTO(mb_id, mb_pw, mb_nick, mb_phone, mb_birthdate, mb_hint);

		// 회원가입 메소드 실행
		int row = new MemberDAO().join(dto);

		// 성공/실패 판단 후 페이지 이동
		// 성공 시 : JoinSuccess.jsp
		// 실패 시 : Main.jsp
		String moveURL;
		if (row > 0) {
			System.out.println("회원가입 성공");
			request.setAttribute("mb_nick", mb_nick);
			moveURL = "./Joinsuccess.jsp";
		} else {
			System.out.println("회원가입 실패");
			moveURL = "./Main.jsp";
		}

		return moveURL;

	}

}
