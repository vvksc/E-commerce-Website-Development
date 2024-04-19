package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Helper.FactoryProvider;
import dao.CategoryDao;
import dao.ProductDao;
import dao.UserDao;
import entities.Ctaegory;
import entities.Product;
import entities.User;

@WebServlet("/addcatogory")

public class ProductOprationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String opration=req.getParameter("opration");
		if(opration.trim().equals("addcategory")) {
			String title=req.getParameter("cattitle");
			String description=req.getParameter("catdescription");
			
			
			Ctaegory category=new Ctaegory();
			category.setCategoryTitle(title);
			category.setCategoryDescription(description);
			CategoryDao categoryDao=new CategoryDao(FactoryProvider.getFactory());
			boolean flag=categoryDao.saveCategory(category);
			
				HttpSession httpSession=req.getSession();
				httpSession.setAttribute("message","Category added successfully ");
				resp.sendRedirect("admin.jsp");
				return;
			
			
			
			
			
			
		}
		else if(opration.trim().equals("addproduct")) {
			String pname=req.getParameter("pName");
			String prodescription=req.getParameter("prodescription");
			int pPrice= Integer.parseInt(req.getParameter("pPrice"));
			int pDiscount=Integer.parseInt(req.getParameter("pDiscount"));
			int pQuantity=Integer.parseInt(req.getParameter("pQuantity"));
			int catid =Integer.parseInt(req.getParameter("catid"));
			//Part part=req.getPart("pPic");
			
			Product p=new Product();
			p.setpDesc(prodescription);
			p.setpPrice(pPrice);
			p.setpDiscount(pDiscount);
			p.setpDiscount(pDiscount);
			p.setpName(pname);
			//p.setpPhoto(part.getSubmittedFileName());
			CategoryDao c=new CategoryDao(FactoryProvider.getFactory());
			p.setCategory(c.getCategoryById(catid));
			
			ProductDao productDao=new ProductDao(FactoryProvider.getFactory());
			boolean flag=productDao.saveProduct(p);
			
				HttpSession httpSession=req.getSession();
				httpSession.setAttribute("message","Product added successfully ");
				resp.sendRedirect("admin.jsp");
				return;
			
			
		}
	}

}


