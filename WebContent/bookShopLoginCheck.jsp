<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="user" scope="page" class="software_1532_Java.UserInfoBean" />
<jsp:setProperty name="user" property="*"/>
<%
if(user.getUsername()==null||user.getPassword()==null){
	%>
	<jsp:forward page="bookShop.jsp"/>
	<%
}
else{
		%>
		<jsp:forward page="bookShop.jsp"/>
		<%} %>

</body>
</html>
