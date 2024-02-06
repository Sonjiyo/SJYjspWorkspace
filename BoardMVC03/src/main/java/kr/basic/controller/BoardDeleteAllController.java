package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.BoardDAO;

public class BoardDeleteAllController implements Controller {
       
	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		BoardDAO.getInstance().deleteAllContent();
		
		return "<script>alert('게시글 모두 삭제 완료');location.href='"+ctx+"/boardList.do'</script>";
	}
}
