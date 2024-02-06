package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.BoardDAO;

public class BoardDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		boolean check = BoardDAO.getInstance().deleteOneContent(num);

		if(check) {
			return "<script>alert('삭제완료');location.href='"+ctx+"/boardList.do'</script>";
		}else {
			return "<script>alert('삭제실패');location.href='"+ctx+"/boardList.do'</script>";
		}
	}

}
