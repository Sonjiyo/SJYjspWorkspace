package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.BoardDAO;


@WebServlet("/boardAdd.do")
public class BoardAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		String user = req.getParameter("user");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		BoardDAO.getInstance().addOneContent(user, title, content);
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter writer = resp.getWriter(); //jsp => out객체
		writer.println("<script>alert('게시글 추가 완료');location.href='"+ctx+"/boardList.do'</script>");
	}

}
