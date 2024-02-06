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
 * Servlet implementation class BoardDeleteController
 */
@WebServlet("/boardDelete.do")
public class BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		boolean check = BoardDAO.getInstance().deleteOneContent(num);
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter writer = resp.getWriter();
		if(check) {
			writer.println("<script>alert('삭제완료');location.href='"+ctx+"/boardList.do'</script>");			
		}else {
			writer.println("<script>alert('삭제실패');location.href='"+ctx+"/boardList.do'</script>");
		}
	}

}
