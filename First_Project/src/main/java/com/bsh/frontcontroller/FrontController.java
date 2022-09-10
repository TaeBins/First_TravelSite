package com.bsh.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bsh.command.Command;
import com.bsh.controller.DeleteCon;
import com.bsh.controller.DeleteMemberCon;
import com.bsh.controller.DeleteOneCon;
import com.bsh.controller.IdCheckCon;
import com.bsh.controller.IdselectCon;
import com.bsh.controller.JoinCon;
import com.bsh.controller.LoginCon;
import com.bsh.controller.LogoutCon;
import com.bsh.controller.MessageCon;
import com.bsh.controller.PwCheckCon;
import com.bsh.controller.PwselectCon;
import com.bsh.controller.UpdateCon;
import com.bsh.controller.WishCon;
import com.bsh.controller.WishselectCon;

public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// url mapping *.do
		// * == 전체
		// .do 확장자가 붙으면 전부 FrontController로 요청하도록 만든 것.

		request.setCharacterEncoding("UTF-8");

		// 어디서 요청이 들어왔는지 확인
		String uri = request.getRequestURI();

		// 프로젝트 이름 확인
		String project = request.getContextPath();

		// 문자열 잘라내기 substring
		String requestURI = uri.substring(project.length() + 1);
		System.out.println(requestURI);
		Command con = null;

		if (requestURI.equals("LoginCon.do")) {
			con = new LoginCon();

		} else if (requestURI.equals("JoinCon.do")) {
			con = new JoinCon();

		} else if (requestURI.equals("LogoutCon.do")) {
			con = new LogoutCon();

		} else if (requestURI.equals("UpdateCon.do")) {
			con = new UpdateCon();

		} else if (requestURI.equals("MessageCon.do")) {
			con = new MessageCon();

		} else if (requestURI.equals("DeleteCon.do")) {
			con = new DeleteCon();

		} else if (requestURI.equals("DeleteOneCon.do")) {
			con = new DeleteOneCon();
			
		} else if (requestURI.equals("IdCheckCon.do")) {
			con = new IdCheckCon();
			
		} else if (requestURI.equals("PwselectCon.do")) {
			con = new PwselectCon();
			
		} else if (requestURI.equals("IdselectCon.do")) {
			con = new IdselectCon();
			
		} else if (requestURI.equals("PwCheckCon.do")) {
			con = new PwCheckCon();
			
		} else if (requestURI.equals("WishCon.do")) {
			con = new WishCon();
			
		} else if (requestURI.equals("WishselectCon.do")) {
			con = new WishselectCon();
			
		} else if (requestURI.equals("DeleteMemberCon.do")) {
			con = new DeleteMemberCon();
			
		} 
		

		String moveURL = con.execute(request, response);

		// 비동기통신은 null을 반환하니까 null이 아닐 때만 페이지 이동
		if(moveURL != null) {
			RequestDispatcher rd = request.getRequestDispatcher(moveURL);
			rd.forward(request, response);
		}
	}

}
