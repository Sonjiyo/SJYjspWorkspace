package kr.basic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.MemberDAO;

public class MemberDeleteController implements Controller{
	
	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		String num = req.getParameter("num");
		if(num==null) { 
			return "redirect:"+ctx+"memberList";
		}
		
		MemberDAO.getInstance().deleteOneMember(Integer.parseInt(num));
		
		return "redirect:"+ctx+"/memberList.do";
	}
	
}
