<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>

<title>Insert title here</title>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>
</head>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=data";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sb","");
Statement stmt=conn.createStatement();


/*String id=request.getParameter("id");
String name=request.getParameter("name");
String age=request.getParameter("age");
String major=request.getParameter("major");*/
 String id=request.getParameter("id");
String sql="select * from student where id="+id;
ResultSet rs=stmt.executeQuery(sql);
String name="";
int age=0;
String major="";
while(rs.next()){
	name=rs.getString("name");
	age=rs.getInt("age");
	major=rs.getString("major");
}
%>
<body>
<form action="hai.jsp" method="post">
<p>学号：<input type="hidden" name="id"  value="<%=id %>"></p>
<p>姓名：<input type="text" name="name" value="<%=name %>"></p>
<p>年龄：<input type="text" name="age" value="<%=age %>"></p>
<p>专业：<input type="text" name="major" value="<%=major %>"></p>
</form>
</body>
</html>