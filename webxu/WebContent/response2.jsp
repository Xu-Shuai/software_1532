<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>response例子</title>
</head>
<body>
<%=response.getBufferSize() %>
<%=response.getCharacterEncoding() %>

<form action="responseHandle.jsp" method="post">
<select name="select">
<option value="baidu" selected="selected">百度</option>
<option value="jyb" selected="selected">教育部</option>
</select>
<button type="submit" name="submit" >确定</button>
</form>

</body>
</html>