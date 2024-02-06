package kr.basic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.Board;
import kr.basic.model.BoardDAO;

public class BoardContentController implements Controller {
       
	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("num")==null) {
			return "updateBoard";
		}
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		Board vo = BoardDAO.getInstance().findBoard(num);
		req.setAttribute("vo", vo);
		
		return "updateBoard";
	}

}
