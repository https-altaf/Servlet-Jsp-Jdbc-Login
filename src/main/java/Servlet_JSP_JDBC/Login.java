package Servlet_JSP_JDBC;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.loginDao;

public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		loginDao dao=new loginDao();
		resp.setContentType("text/html");
		
		PrintWriter out=resp.getWriter();
		out.print("login servlet");
		
		
	String uname=req.getParameter("username");
	String pass=req.getParameter("password");
	
	 if(dao.check(uname, pass))
	 {
		 HttpSession session = req.getSession();
		 
		 session.setAttribute("username",uname);
		 resp.sendRedirect("welcomepage.jsp");
	 }
	 else
	 {
		 resp.sendRedirect("login.jsp");
	 }
		
	}

}
