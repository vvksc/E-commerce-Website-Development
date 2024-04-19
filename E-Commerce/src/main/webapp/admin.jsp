<%@page import="Helper.FactoryProvider"%>
<%@page import="dao.CategoryDao"%>
<%@page import="dao.ProductDao"%>
<%@page import="dao.UserDao"%>
<%@page import="entities.User"%>
<%@page import="entities.Ctaegory"%>
<%@page import="entities.Product"%>
<%@page import="java.util.List"%>


<%
User user = (User) session.getAttribute("current-user");
if (user == null) {

	session.setAttribute("message", "You are not logged in!! ");
	response.sendRedirect("login.jsp");
	return;
} else {
	if (user.getUserType().equals("normal")) {
		session.setAttribute("message", "Access denied by Admin!! ");
		response.sendRedirect("login.jsp");
		return;
	}
}
%>
<%
             CategoryDao categoryDao=new CategoryDao(FactoryProvider.getFactory());
    		List<Ctaegory>list=categoryDao.getCategory();
  %>
  <%
             ProductDao productDao=new ProductDao(FactoryProvider.getFactory());
    		List<Product>list1=productDao.getProduct();
    		
  %>
   <%
             UserDao userDao=new UserDao(FactoryProvider.getFactory());
    		List<User>list2=userDao.getUser();
    		
  %>




<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<%@include file="componemts/CssJs.jsp"%>
</head>
<body>
	<%@include file="componemts/navbar.jsp"%>
	<%@include file="componemts/message.jsp" %>
	<div class="parent">
		<div class="child">
			<img class="rounded-circle " alt="user.png" src="img2/man.png">
			<h1 style="margin-left: 160px;"><%=list2.size()%></h1>
			<h1>Active-Users</h1>
		</div>
		<div class="child">
			<img class="rounded-circle " alt="user.png" src="img2/catgories.png">
			<h1 style="margin-left: 160px;"><%=list.size()%></h1>
			<h1 style="margin-left: 90px;">Categories</h1>
		</div>
		<div class="child">
			<img class="rounded-circle " alt="user.png" src="img2/products.png">
			<h1 style="margin-left: 160px;"><%=list1.size()%></h1>
			<h1 style="margin-left: 99px;">Products</h1>
		</div>
	</div>

	<div class="parent">
		<div class="child" data-toggle="modal" data-target="#add-categories">
			<img class="rounded-circle " alt="user.png" src="img2/menu.png">
			<p style="margin-left: 60px;">Click here to add new Categories</p>
			<h1>Add-Categories</h1>
		</div>

		<div class="child" data-toggle="modal" data-target="#add-products">
			<img class="rounded-circle " alt="user.png"
				src="img2/add-product.png">
			<p style="margin-left: 60px;">Click here to add new Products</p>
			<h1>Add-Products</h1>
		</div>
	</div>



	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade " id="add-categories" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header custom-bg">
					<h5 class="modal-title text-warning" id="exampleModalLabel">Fill
						Category details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					...
					<form action="addcatogory">
					<input type="hidden" name="opration" value="addcategory">
						<div class="form-group">
							<label for="exampleInputEmail1">Category Name</label>
							 <input name="cattitle"
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter Catogory Title" required>
							<small id="emailHelp" class="form-text text-muted">Adding
								new Category in BudgetWala</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Category Description</label>
							<textarea name="catdescription" class="form-control" id="exampleFormControlTextarea1"
								rows="3" placeholder="Enter Category description"></textarea>
						</div>

						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Add
							Category</button>
							<button type="reset" class="btn btn-outline-warning my-2 my-sm-0">Reset</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-danger my-2 my-sm-0"
						data-dismiss="modal">Close</button>
					
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="modal fade " id="add-products" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header custom-bg">
					<h5 class="modal-title text-warning" id="exampleModalLabel">Fill
						Category details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				
<div class="modal-body">
	
	<form action="addcatogory" enctype="mutlipart/form-data">
	<input type="hidden" name="opration" value="addproduct">
  <div class="form-group">
    <label for="exampleFormControlInput1">Product Name</label>
    <input name="pName" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Product Name">
  </div>
  <div class="form-group">
							<label for="exampleInputPassword1">Product Description</label>
							<textarea name="prodescription" class="form-control" id="exampleFormControlTextarea1"
								rows="3" placeholder="Enter Product description"></textarea>
						</div>
<div class="form-group">
    <label for="exampleFormControlInput1">Product Price</label>
    <input name="pPrice" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Product Price">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Product Discount</label>
    <input name="pDiscount" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Discount Price">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Product Quantity</label>
    <input name="pQuantity" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Product Quantity">
  </div>
  
  
   <div class="form-group">
    <label for="exampleFormControlSelect1">Select Product Category</label>
    <select name="catid" class="form-control" id="exampleFormControlSelect1">
     <%for(Ctaegory c:list){ %>
     
      <option value="<%=c.getCategoryId() %>" ><%=c.getCategoryTitle() %></option>
      <%} %>
    </select>
  </div>
   <div class="form-group">
    <label for="exampleFormControlFile1">Upload Product Pic:</label>
    <br>
    <input name="pPic" type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
  
  
 
  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Add-Product</button>
  <button type="reset" class="btn btn-outline-warning my-2 my-sm-0">Reset</button>
  
</form>

</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-danger my-2 my-sm-0"
						data-dismiss="modal">Close</button>
					
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="card text-center custom-bg text-warning">
  <div class="card-header">
    Created & Maintained by BudgetWala pvt.ltd.
  </div>
  <div class="card-body">
    <h5 class="card-title">Thanks for Visiting</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="index.jsp" class="btn btn-primary">BudetWala</a>
  </div>
  <div class="card-footer text-muted">
    Be Kind Be Helpfull !!
  </div>
</div>
</body>
</html>


















