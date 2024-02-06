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
		
		req.setAttribute("list", list);
		req.setAttribute("size", list.size());
		RequestDispatcher dis = req.getRequestDispatcher("board/boardList.jsp");
		dis.forward(req, resp);
	}

}
