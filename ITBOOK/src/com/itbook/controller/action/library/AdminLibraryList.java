package com.itbook.controller.action.library;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbook.controller.action.Action;
import com.itbook.dao.LibraryDAO;
import com.itbook.vo.library.LibraryVO;

/**
 * @author 수아
 */

public class AdminLibraryList implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String url = "/library/adminLibraryList.jsp";
		
		LibraryDAO lDao = LibraryDAO.getInstance();
		
		List<LibraryVO> libraryList = lDao.selectLibraryList();
		request.setAttribute("libraryList", libraryList);
		
		System.out.println(libraryList + "adminLibraryList 출력완료.");
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
}
