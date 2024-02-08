package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.BoardDAO;


public class BoardAddController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		if(req.getParameter("user")==null) {
			int num = BoardDAO.getInstance().getBoardList().get(BoardDAO.getInstance().getBoardList().size()-1).getNum()+1;
			req.setAttribute("num", num);
			return "addBoard";
		}
		
		String user = req.getParameter("user");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		BoardDAO.getInstance().addOneContent(user, title, content);
		
		return "<script>alert('게시글 추가 완료');location.href='"+ctx+"/boardList.do'</script>";
	}

}
