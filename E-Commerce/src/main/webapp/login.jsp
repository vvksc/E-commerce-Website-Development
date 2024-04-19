
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login-BudgetWala</title>
<%@include file="componemts/CssJs.jsp" %>
</head>
<body>	
<%@include file="componemts/navbar.jsp" %>
<div class="container">
	<div class="row">
	<div class="col-md-6 offset-md-3">
	<div class="card mt-3">
	<div class="card header custom-bg text-white">Login Here-BudgetWala</div>
	<div class="card body">
	
	<form action="login">
	<%@include file="componemts/message.jsp" %>
	
  <div class="form-group mt-3">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password"type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  
  <div class="contaoner text-center"><button type="submit" class="btn btn-primary">Submit</button>
  		<button type="reset" class="btn btn-primary">Reset</button>
  </div>
  <a href="register.jsp" class="text-center d-block mt-2">If not registerd click here</a>
</form></div>
	<div class="card footer"></div>
	</div>
	
	</div></div></div>

</body>
</html>