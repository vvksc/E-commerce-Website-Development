
<%@page import="entities.User" %>
<% User user1=(User)session.getAttribute("current-user"); %>



<nav class="navbar navbar-expand-lg  custom-bg">
 <div class="container-fluid ">
 
 <a class="navbar-brand text-white" href="index.jsp"><i class="fa-solid fa-store"></i>BudgetWala</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-white" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">WishList</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
    <ul class="navbar-nav ml-auto ">
    
    <%  if(user1==null){
    	
     %> <li class="nav-item active">
        <a class="nav-link" href="login.jsp">Login</a>
      </li><li class="nav-item active">
        <a class="nav-link text-white" href="register.jsp">Register</a>
      </li>
      <%
      }else{
      %> <li class="nav-item active">
        <a class="nav-link text-white" href="#"><%=user1.getUsername() %></a>
      </li><li class="nav-item active">
        <a class="nav-link text-white" href="logout">Logout</a>
      </li>
      <%
      } 
      %>
    
   
   </ul>
  </div></div>
</nav>