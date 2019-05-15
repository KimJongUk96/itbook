package com.itbook.controller.action.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbook.controller.action.Action;
import com.itbook.dao.NoticeDAO;
import com.itbook.vo.Paging;
import com.itbook.vo.Notice.NoticeVO;

public class NoticeListFormAction implements Action{

//	@Override
//	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		String url = "notice/noticeListForm.jsp";
//		
//		NoticeDAO nDao = NoticeDAO.getInstance();
//		ArrayList<NoticeVO> list = nDao.noticeList();
//		
//		request.setAttribute("noticeList", list);
//		
//		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
//		dispatcher.forward(request, response);
//		
//	}
	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "notice/noticeListForm.jsp";
		
		
//		// 현재 페이지 번호 만들기
//		int spage = 1;
//		String page = request.getParameter("page");
//		
//		if(page != null)
//			spage = Integer.parseInt(page);
		
		// 검색조건과 검색내용을 가져온다.
		String opt = request.getParameter("opt");
		String condition = request.getParameter("condition");
		
		
	    
	    
	    
	    
		// 검색조건과 내용을 Map에 담는다.
		HashMap<String, Object> listOpt = new HashMap<String, Object>();
		listOpt.put("opt", opt);
		listOpt.put("condition", condition);
//		listOpt.put("start", spage*10-9);
		
		NoticeDAO nDao = NoticeDAO.getInstance();
//		int listCount = nDao.getNoticeListCount(listOpt);
		ArrayList<NoticeVO> list = nDao.getNoticeList(listOpt);
		
		 // 한 화면에 10개의 게시글을 보여지게함
        // 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
        
//        // 전체 페이지 수
//        int maxPage = (int)(listCount/10.0 + 0.9);
//        //시작 페이지 번호
//        int startPage = (int)(spage/5.0 + 0.8) * 5 - 4;
//        //마지막 페이지 번호
//        int endPage = startPage + 4;
//        if(endPage > maxPage)    endPage = maxPage;
//        
//        // 4개 페이지번호 저장
//        request.setAttribute("spage", spage);
//        request.setAttribute("maxPage", maxPage);
//        request.setAttribute("startPage", startPage);
//        request.setAttribute("endPage", endPage);
		
		request.setAttribute("noticeList", list);
		
		// 책 페이징
				
				
		Paging paging = new Paging(10,1);
		int pageNum = request.getParameter("pageNum") == null ? 1 : Integer.parseInt(request.getParameter("pageNum"));
				
		paging.setPageNum(pageNum);
		nDao.selectNoticeRowCount(paging);
		ArrayList<NoticeVO> noticeList = nDao.selectNoticePage(paging);

		
		// 글의 총 수와 글목록 저장
        //request.setAttribute("listCount", listCount);
        
        request.setAttribute("noticeList", noticeList);
        request.setAttribute("paging", paging);
        
        
        // 단순 조회이므로 forward()사용 (= DB의 상태변화 없으므로)
//        forward.setRedirect(false);
//        forward.setNextPath("BoardListForm.bo");
//        
//        return forward;
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		

		
	}

	
		
	
}
