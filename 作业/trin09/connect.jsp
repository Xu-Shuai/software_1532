<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<%@ page import="java.sql.DriverManager"%>
<html>
<body>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>
<table>
<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=data";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sb","");
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from student");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td><a href='keyi.jsp?id="+rs.getInt("id")+"'>学号</a></td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("major")+"</td>");
    out.println("</tr>");
  }
  rs.close();
  stmt.close();
  conn.close();
  
  
//  String sql = "select * from goods where min_name = ? and age = ?";  // 含有参数
 // PreparedStatement st = conn.prepareStatement(sql);
  //st.setString(1, "儿童"); // 参数赋值
  //st.setInt(2, 22);
 // System.out.println(st.toString()); //com.mysql.jdbc.JDBC4PreparedStatement@d704f0: select * from goods where min_name = '儿童'
  %>  
</table>
</body>
</html>
