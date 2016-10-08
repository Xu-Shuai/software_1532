<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String strName=request.getParameter("loginName");
session.setAttribute("name", strName);
%>
<h1>你想要购买的商品</h1>
<form action="account.jsp" method="get">
要购买的商品：<input type="text" name="shopName">
<button type="submit">确认购买</button>
</form>
</body>
</html>