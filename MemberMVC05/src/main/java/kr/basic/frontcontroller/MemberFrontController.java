package kr.basic.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.controller.Controller;

// ~.do로 끝나는 모든 서블릿이 작동하도록함
@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String url = req.getRequestURI(); //MemberMVC03/...
		String ctx = req.getContextPath(); //MemberMVC03
		
		String command = url.substring(ctx.length()); //앞의 MemverMVC03을 없애기 위함
		
		HandlerMapping mapping = new HandlerMapping();
		
		Controller controller = mapping.getController(command);
		String nextPage = controller.requestHandler(req, resp);
		
		if(nextPage!=null) { //nullException 방지
			if(nextPage.indexOf("redirect:")!=-1) { // nextPage가 redirect:를 포함하지 않는다면
				resp.sendRedirect(nextPage.substring(9)); //redirect:는 제외
			}else {
				RequestDispatcher dis = req.getRequestDispatcher(ViewResolver.makeView(nextPage));
				dis.forward(req, resp);
			}
		}
	}

	
}
