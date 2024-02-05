package kr.basic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.basic.model.Member;
import kr.basic.model.MemberDAO;


@WebServlet("/memberContent.do")
public class MemberContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int num = Integer.parseInt(req.getParameter("num"));
		
		Member m = MemberDAO.getInstance().getMemberByNum(num);
		req.setAttribute("vo", m);
		
		RequestDispatcher dis = req.getRequestDispatcher("member/memberContent.jsp");
		dis.forward(req, resp);
	}
}
