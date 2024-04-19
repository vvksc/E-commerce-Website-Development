package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Helper.FactoryProvider;
import dao.UserDao;
import entities.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		UserDao userDao=new UserDao(FactoryProvider.getFactory());
		User user=userDao.getUserByEmailAndPassword(email, password);
		HttpSession httpSession=req.getSession();
		if(user==null) {

			
			httpSession.setAttribute("message","Invalid details Try again!! ");
			resp.sendRedirect("login.jsp");return;
		}
		else{
			
			httpSession.setAttribute("current-user",user);
			if(user.getUserType().equals("admin")) {
				System.out.println(user.getUsername());
				resp.sendRedirect("admin.jsp");
		}else if(user.getUserType().equals("normal")) {System.out.println(user.getUsername());
			resp.sendRedirect("normal.jsp");
	}
			
	}

}}
