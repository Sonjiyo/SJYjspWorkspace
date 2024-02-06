package kr.basic.frontController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.basic.controller.Controller;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.do")
public class BoardFrontController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter writer = resp.getWriter();
		
		String url = req.getRequestURI();
		String ctx = req.getContextPath();
		String command = url.substring(ctx.length());
		
		HandlerMapping mapping = new HandlerMapping();
		Controller controller = mapping.getController(command);
		String nextPage = controller.requestHandler(req, resp);
		
		if(nextPage.indexOf("<script>")!=-1) {
			writer.println(nextPage);
		} else {
			RequestDispatcher dis = req.getRequestDispatcher(ViewResolver.makeView(nextPage));
			dis.forward(req, resp);
		}
	}
       

}
