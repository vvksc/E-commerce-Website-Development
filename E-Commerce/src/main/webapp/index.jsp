<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="Helper.FactoryProvider"%>
<html>
<head>
<%@include file="componemts/CssJs.jsp" %>
</head>
<body>
<%@include file="componemts/navbar.jsp" %>
<h2>Hello World!</h2>
<h1>I am dugesh</h1>
<h1></h1>
<%
  out.println(FactoryProvider.getFactory());
%>
</body>
</html>
