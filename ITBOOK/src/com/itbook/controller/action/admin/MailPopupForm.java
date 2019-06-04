package com.itbook.controller.action.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbook.controller.action.Action;
import com.itbook.dao.MemberDAO;
import com.itbook.vo.MemberVO;

public class MailPopupForm implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin/mailPopup.jsp";
		String memNum = request.getParameter("memNum");
		request.setAttribute("memNum", memNum);
		
		MemberVO mVo = new MemberVO();
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.getEmail(memNum);
		
		String email = request.getParameter("email");
		request.setAttribute("email", email);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}