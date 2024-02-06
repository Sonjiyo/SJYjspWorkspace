package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.BoardDAO;

/**
 * Servlet implementation class BoardDeleteAllController
 */
@WebServlet("/boardDeleteAll.do")
public class BoardDeleteAllController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		BoardDAO.getInstance().deleteAllContent();
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter writer = resp.getWriter();
		writer.println("<script>alert('게시글 모두 삭제 완료');location.href='"+ctx+"/boardList.do'</script>");
	}

}
