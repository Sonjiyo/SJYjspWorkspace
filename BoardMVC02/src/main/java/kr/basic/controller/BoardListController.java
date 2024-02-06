package kr.basic.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.Board;
import kr.basic.model.BoardDAO;

/**
 * Servlet implementation class BoardListController
 */
@WebServlet("/boardList.do")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<Board> list = BoardDAO.getInstance().getBoardList();
		
		int size = list.size();
		int pageCut = 5;
		int nowPage = 1;
		if(req.getParameter("page")!=null){
			nowPage = Integer.parseInt(req.getParameter("page"));
		}
		int startContent = (nowPage-1)*pageCut;
		int endContent = startContent+pageCut;
		if(endContent>size){
			endContent = size;
		}
		int totalPage = size/pageCut;
		if(size%pageCut>0) totalPage+=1;
		
		int startPage = 1;
		if(req.getParameter("start")!=null){
			startPage = Integer.parseInt(req.getParameter("start"));
		}
		int endPage = startPage+2;
		if(endPage>totalPage) endPage=totalPage;
		
		ArrayList<Board> arr = new ArrayList<Board>();
		for(int i =startContent; i<endContent; i++) {
			arr.add(list.get(i));
		}
		req.setAttribute("list", arr);
		req.setAttribute("size", size);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("totalPage", totalPage);
		RequestDispatcher dis = req.getRequestDispatcher("board/boardList.jsp");
		dis.forward(req, resp);
	}

}
