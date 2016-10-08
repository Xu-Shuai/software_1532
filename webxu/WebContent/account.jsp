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
String sn=request.getParameter("shopName");
session.setAttribute("goods", sn);
%>
客户姓名：<%=(String)session.getAttribute("name")%>
购买的商品名是：<%=(String)session.getAttribute("goods")%>
</body>
</html>