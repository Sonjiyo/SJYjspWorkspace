package kr.basic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.model.Member;
import kr.basic.model.MemberDAO;


public class MemberInsertController implements Controller{
		
	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ctx = req.getContextPath();
		
		if(req.getParameter("id")==null) {
			return "memberInsert";
		}
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		Member m = new Member(0, id, pass, name, age, email, phone);
		
		MemberDAO.getInstance().addOneMember(m);
		
		return "redirect:"+ctx+"/memberList.do";
	}

}
