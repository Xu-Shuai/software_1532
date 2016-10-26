<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=data";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sb","");

String sql="update student set name = ?,age = ?,major = ?where id = ?";
PreparedStatement ps=conn.prepareStatement(sql);

String id=request.getParameter("id");
String name=request.getParameter("name");
String age=request.getParameter("age");
String major=request.getParameter("major");

ps.setString(1, name);
ps.setInt(2,Integer.parseInt(age));
ps.setString(3, major);
ps.setInt(4, Integer.parseInt(id));

int rwsult=ps.executeUpdate();
ps.close();
conn.close();
%>
<body>
<%
response.sendRedirect("connect.jsp");
session.setAttribute("info", "修改成功");
%>
</body>
</html>