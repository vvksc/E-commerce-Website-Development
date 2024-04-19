package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Helper.FactoryProvider;
import entities.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String name=req.getParameter("user_name");
			String email=req.getParameter("user_email");
			String password=req.getParameter("user_password");
			String phone=req.getParameter("user_phone");
			String address=req.getParameter("user_address");
			User user=new User(name, email, password, phone,"Not found", address,"normal");
			
			EntityManager em=FactoryProvider.getFactory().createEntityManager();
			EntityTransaction et=em.getTransaction();
			et.begin();
			em.persist(user);
			User u=(User)em.getReference(User.class,1);
			int uid=(int)u.getUserid();
			et.commit();
			
			
			HttpSession httpSession=req.getSession();
			httpSession.setAttribute("message","Registration Succesfull with UserId "+uid);
			resp.sendRedirect("register.jsp");
			return;
			
//			PrintWriter pw=resp.getWriter();
//			pw.write("<h1>Success User Created</h1>");
//			pw.write("<html><body>");//used to change response to html type content.
//			pw.write("<h3> UserType           :  normal </h3>");
//			pw.write("<h3> UserId             : "+uid+ "</h3>");
//			pw.write("<h3> Name               : "+name+ "</h3>");
//			pw.write("<h3> Email              : "+email+ "</h3>");
//			pw.write("<h3> Password           : "+password+ "</h3>");
//			pw.write("<h3> Phone              : "+phone+ "</h3>");
//			pw.write("<h3> Address            : "+address+ "</h3>");
//			pw.write("</html></body>");
//			System.out.println("done");
			
	}
	
	}

