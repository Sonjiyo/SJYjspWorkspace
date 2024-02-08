package kr.basic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		HttpSession session = req.getSession();
		session.setAttribute("log", null);
		
		req.setAttribute("logout", 1);
		
		return "redirect:"+ctx+"/memberList.do";
	}
	
}
