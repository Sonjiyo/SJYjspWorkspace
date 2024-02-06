package kr.basic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.basic.model.MemberDAO;

@WebServlet("/memberLogin.do")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pw");
		
		int num = MemberDAO.getInstance().checkLogin(id, pass);
//		resp.setContentType("text/html; charset=utf-8");
//		PrintWriter writer = resp.getWriter(); //jsp => out객체
//		writer.println("<script>alsert('로그인 실패'); location.href='member/memberLogin.jsp'</script>");
		if(num==0) {
			req.setAttribute("loginFail", 1);
			RequestDispatcher dis = req.getRequestDispatcher("member/memberLogin.jsp");
			dis.forward(req, resp);
		}else {
			HttpSession session = req.getSession();
			session.setAttribute("log", num);
			
			RequestDispatcher dis = req.getRequestDispatcher("/memberList.do");
			dis.forward(req, resp);
		}
	}

}
