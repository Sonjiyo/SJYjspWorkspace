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

public class MemberLoginController implements Controller{
		
	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		if(req.getParameter("id")==null) {
			return "memberLogin";
		}
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pw");
		
		int num = MemberDAO.getInstance().checkLogin(id, pass);

		if(num==0) {
			req.setAttribute("loginFail", 1);
			return "redirect:"+ctx+"/memberLogin.do";
		}else {
			HttpSession session = req.getSession();
			session.setAttribute("log", num);
			return "redirect:"+ctx+"/memberList.do";
		}
	}

}
