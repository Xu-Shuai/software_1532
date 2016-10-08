<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>你的智障等级</title>
</head>
<body>
<%
int e=0;
String s1=request.getParameter("1");
String s2=request.getParameter("2");
String s3=request.getParameter("3");
String s4=request.getParameter("4");
if(s1==null)
	s1="";
else if(s1.equals("B"))
	e++;
if(s2==null)
	s2="";
else if(s2.equals("A"))
	e++;
if(s3==null)
	s3="";
else if(s3.equals("C"))
	e++;
if(s4==null)
	s4="";
else if(s4.equals("D"))
	e++;
int a=e/4*100;
String str=null;
if(0<a&& a<60)
	str="你的等级是：D";
if(60<=a&& a<80)
	str="你的等级是：C";
if(80<=a&& a<90)
	str="你的等级是：B";
if(90<=a&& a<=100)
	str="你的等级是：A";

%>
你本次智障等级测试成绩是：
<%=e/4*100 %>
<%=str%>
</body>
</html>