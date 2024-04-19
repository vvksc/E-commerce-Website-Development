<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
<%@include file="componemts/CssJs.jsp" %>
</head>
<body>
<%@include file="componemts/navbar.jsp" %>
<div class="row mt-5 container-fluid">
<div class="col-md-4 offset-md-4">
<form action="register">
<%@include file="componemts/message.jsp" %>
<h2 class="text-center my-3">SignUp here!</h2>
<div class="form-group">
    <label for="name">User Name</label>
    <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter Your Name" aria-describedby="emailHelp">
    </div>
 <div class="form-group">
 <label for="email">User E-Mail</label>
 <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter Your Email" aria-describedby="emailHelp">
 </div>
 <div class="form-group">
 <label for="password">Create Password</label>
 <input name="user_password" type="password" class="form-control" id="password" placeholder="Create Your New Password" aria-describedby="emailHelp">
 </div>
 <div class="form-group">
 <label for="phone">User Phone Number</label>
 <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter Your Number" aria-describedby="emailHelp">
 </div>
 <div class="form-group">
 <label for="phone">User Address</label>
 <textarea name="user_address" style="height: 180px;"class="form-control" placeholder="Enter Your Address" cols=""></textarea>
 </div>
<div class="container text-center">
<button type="submit" class="btn btn-success">Register</button>
<button type="button" class="btn btn-warning">Reset</button>
</div>
</form>
</div>
</div>

</body>
</html>