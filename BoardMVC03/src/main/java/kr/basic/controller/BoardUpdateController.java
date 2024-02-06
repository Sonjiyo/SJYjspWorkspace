package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.BoardDAO;

public class BoardUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		boolean check = BoardDAO.getInstance().updateContent(num, title, content);
		
		if(check) {
			return "<script>alert('수정완료');location.href='"+ctx+"/boardList.do'</script>";
		}else {
			return "<script>alert('수정실패');location.href='"+ctx+"/boardList.do'</script>";		
		}
		
	}

}
